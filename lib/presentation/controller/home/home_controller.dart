import 'package:flutter/cupertino.dart';
import 'package:gapopa/domain/entities/image_entity/image_entity.dart';
import 'package:gapopa/domain/entities/image_param/image_param.dart';
import 'package:gapopa/domain/usecases/image_usecase.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ImageUsecase _imageUsecase;
  List<ImageEntity> images = [];
  bool isLoading = false;
  int currentPage = 1;
  bool hasMoreData = true;
  String keyword = "";

  HomeController(this._imageUsecase);

  @override
  void onInit() {
    super.onInit();
    loadImages();
  }

  void setKeyword(String value){
    if(images.isNotEmpty) {
      images.clear();
    }
    keyword = value;
    loadImages();
  }

  Future<void> loadImages() async {
    if (isLoading || !hasMoreData) return;

    isLoading = true;
    update();

    final param = ImageParam(
      page: currentPage.toString(),
      q: keyword.isNotEmpty ? keyword : "flower",
    );
    final result = await _imageUsecase.call(param);
    result.fold(
      (failure) {
        debugPrint(failure.toString());
        hasMoreData = false;
      },
      (fetchedImages) {
        if (fetchedImages.isEmpty) {
          hasMoreData = false;
        } else {
          images.addAll(fetchedImages);
          currentPage++;
        }
      },
    );

    isLoading = false;
    update();
  }

}

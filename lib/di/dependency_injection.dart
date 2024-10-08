
import 'package:gapopa/data/datasources/data_sources/image_data_source.dart';
import 'package:gapopa/data/repositories/image_repository_impl.dart';
import 'package:gapopa/domain/repositories/image_repository.dart';
import 'package:gapopa/domain/usecases/image_usecase.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

import '../presentation/controller/home/home_controller.dart';

Future<void> initDependency() async {
  Get.put<Dio>(Dio());

  // CORE
  Get.put<Dio>(Dio());

  Get.lazyPut<ImageDataSource>(() => ImageDataSourceImpl(Get.find<Dio>()));
  Get.lazyPut<ImageRepository>(() => ImageRepositoryImpl(Get.find<ImageDataSource>()));
  Get.lazyPut<ImageUsecase>(() => ImageUsecase(Get.find<ImageRepository>()));
  Get.lazyPut<HomeController>(() => HomeController(Get.find<ImageUsecase>()));

}

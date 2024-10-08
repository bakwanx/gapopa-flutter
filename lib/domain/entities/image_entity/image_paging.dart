import 'package:gapopa/domain/entities/image_entity/image_entity.dart';

class ImagePaging {
  ImagePaging({
    required this.totalResults,
    required this.images,
  });

  int totalResults;
  List<ImageEntity> images;
}
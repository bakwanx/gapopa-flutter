import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:gapopa/domain/entities/image_param/image_param.dart';
import 'package:gapopa/domain/repositories/image_repository.dart';

import '../entities/image_entity/image_entity.dart';

class ImageUsecase {
  final ImageRepository _imageRepository;
  ImageUsecase(this._imageRepository);

  Future<Either<Exception, List<ImageEntity>>> call(ImageParam param) {
    return _imageRepository.getImages(param);
  }
}
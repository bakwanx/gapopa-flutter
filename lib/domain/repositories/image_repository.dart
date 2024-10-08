import 'package:either_dart/either.dart';
import 'package:gapopa/domain/entities/image_entity/image_entity.dart';
import 'package:gapopa/domain/entities/image_param/image_param.dart';

abstract class ImageRepository {
  Future<Either<Exception, List<ImageEntity>>> getImages(ImageParam param);
}
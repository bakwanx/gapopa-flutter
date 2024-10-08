import 'package:either_dart/src/either.dart';
import 'package:gapopa/data/datasources/data_sources/image_data_source.dart';
import 'package:gapopa/data/mapper/image_mapper/image_param_mapper.dart';
import 'package:gapopa/data/mapper/image_mapper/image_response_mapper.dart';
import 'package:gapopa/domain/entities/image_entity/image_entity.dart';
import 'package:gapopa/domain/entities/image_param/image_param.dart';
import 'package:gapopa/domain/repositories/image_repository.dart';
import 'package:gapopa/utils/error/error_exception.dart';

class ImageRepositoryImpl implements ImageRepository {
  final ImageDataSource imageDataSource;
  ImageRepositoryImpl(this.imageDataSource);
  @override
  Future<Either<Exception, List<ImageEntity>>> getImages(ImageParam param) async {
    try {
      final result = await imageDataSource.getImages(param.toRequest());
      if (result.isEmpty) {
        return Left(DataException(message: 'Data empty'));
      }
      return Right(result.map((toElement) => toElement.toEntity()).toList());
    } catch (e) {
      return Left(Exception(e));
    }
  }

}
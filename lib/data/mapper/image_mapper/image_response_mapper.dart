import 'package:gapopa/domain/entities/image_entity/image_entity.dart';
import 'package:gapopa/utils/ext/safe_null_object.dart';

import '../../models/image_response/image_response_model.dart';

extension ImageModelResponseMapper on ImageResponseModel {
  ImageEntity toEntity() {
    return ImageEntity(
      id: id.orEmpty(),
      pageURL: pageURL.orEmpty(),
      type: type.orEmpty(),
      tags: tags.orEmpty(),
      previewURL: previewURL.orEmpty(),
      previewWidth: previewWidth.orEmpty(),
      previewHeight: previewHeight.orEmpty(),
      webformatURL: webformatURL.orEmpty(),
      webformatWidth: webformatWidth.orEmpty(),
      webformatHeight: webformatHeight.orEmpty(),
      largeImageURL: largeImageURL.orEmpty(),
      imageWidth: imageWidth.orEmpty(),
      imageHeight: imageHeight.orEmpty(),
      imageSize: imageSize.orEmpty(),
      views: views.orEmpty(),
      downloads: downloads.orEmpty(),
      collections: collections.orEmpty(),
      likes: likes.orEmpty(),
      comments: comments.orEmpty(),
      userId: userId.orEmpty(),
      user: user.orEmpty(),
      userImageURL: userImageURL.orEmpty(),
    );
  }
}

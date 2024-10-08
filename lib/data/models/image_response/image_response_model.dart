import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_response_model.freezed.dart';
part 'image_response_model.g.dart';

@freezed
class ImageResponseModel with _$ImageResponseModel {
  const factory ImageResponseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'pageURL') String? pageURL,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'tags') String? tags,
    @JsonKey(name: 'previewURL') String? previewURL,
    @JsonKey(name: 'previewWidth') int? previewWidth,
    @JsonKey(name: 'previewHeight') int? previewHeight,
    @JsonKey(name: 'webformatURL') String? webformatURL,
    @JsonKey(name: 'webformatWidth') int? webformatWidth,
    @JsonKey(name: 'webformatHeight') int? webformatHeight,
    @JsonKey(name: 'largeImageURL') String? largeImageURL,
    @JsonKey(name: 'imageWidth') int? imageWidth,
    @JsonKey(name: 'imageHeight') int? imageHeight,
    @JsonKey(name: 'imageSize') int? imageSize,
    @JsonKey(name: 'views') int? views,
    @JsonKey(name: 'downloads') int? downloads,
    @JsonKey(name: 'collections') int? collections,
    @JsonKey(name: 'likes') int? likes,
    @JsonKey(name: 'comments') int? comments,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user') String? user,
    @JsonKey(name: 'userImageURL') String? userImageURL,
  }) = _ImageResponseModel;

  factory ImageResponseModel.fromJson(Map<String, Object?> json) => _$ImageResponseModelFromJson(json);
}


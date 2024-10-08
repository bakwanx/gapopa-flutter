import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_request_model.freezed.dart';
part 'image_request_model.g.dart';

@freezed
class ImageRequestModel with _$ImageRequestModel {
  factory ImageRequestModel({
    @JsonKey(name: 'key') String? key,
    @JsonKey(name: 'q') String? q,
    @JsonKey(name: 'image_type')  String? imageType,
    @JsonKey(name: 'page')  String? page,
    @JsonKey(name: 'per_page')  String? perPage,
  }) = _ImageRequestModel;

  factory ImageRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ImageRequestModelFromJson(json);
}

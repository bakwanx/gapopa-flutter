import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_param.freezed.dart';

@freezed
class ImageParam with _$ImageParam {
  const ImageParam._();
  const factory ImageParam({
    @Default('46303201-58766dde06b0a3646e5ab4812') String? key,
    @Default('') String? q,
    @Default('photo') String? imageType,
    @Default('1') String? page,
    @Default('20') String? perPage,
  }) = _ImageParam;
}


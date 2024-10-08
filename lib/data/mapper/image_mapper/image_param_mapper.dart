import 'package:gapopa/data/models/image_request/image_request_model.dart';
import 'package:gapopa/domain/entities/image_param/image_param.dart';

extension ImageParamMapper on ImageParam {
  ImageRequestModel toRequest() {
    return ImageRequestModel(
      key: key,
      q: q,
      imageType: imageType,
      page: page,
      perPage: perPage,
    );
  }
}

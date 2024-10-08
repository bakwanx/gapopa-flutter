// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageRequestModelImpl _$$ImageRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageRequestModelImpl(
      key: json['key'] as String?,
      q: json['q'] as String?,
      imageType: json['image_type'] as String?,
      page: json['page'] as String?,
      perPage: json['per_page'] as String?,
    );

Map<String, dynamic> _$$ImageRequestModelImplToJson(
        _$ImageRequestModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'q': instance.q,
      'image_type': instance.imageType,
      'page': instance.page,
      'per_page': instance.perPage,
    };

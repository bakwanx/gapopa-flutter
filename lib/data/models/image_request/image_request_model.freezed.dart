// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageRequestModel _$ImageRequestModelFromJson(Map<String, dynamic> json) {
  return _ImageRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ImageRequestModel {
  @JsonKey(name: 'key')
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'q')
  String? get q => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_type')
  String? get imageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  String? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  String? get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageRequestModelCopyWith<ImageRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageRequestModelCopyWith<$Res> {
  factory $ImageRequestModelCopyWith(
          ImageRequestModel value, $Res Function(ImageRequestModel) then) =
      _$ImageRequestModelCopyWithImpl<$Res, ImageRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'q') String? q,
      @JsonKey(name: 'image_type') String? imageType,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'per_page') String? perPage});
}

/// @nodoc
class _$ImageRequestModelCopyWithImpl<$Res, $Val extends ImageRequestModel>
    implements $ImageRequestModelCopyWith<$Res> {
  _$ImageRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? q = freezed,
    Object? imageType = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageRequestModelImplCopyWith<$Res>
    implements $ImageRequestModelCopyWith<$Res> {
  factory _$$ImageRequestModelImplCopyWith(_$ImageRequestModelImpl value,
          $Res Function(_$ImageRequestModelImpl) then) =
      __$$ImageRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'q') String? q,
      @JsonKey(name: 'image_type') String? imageType,
      @JsonKey(name: 'page') String? page,
      @JsonKey(name: 'per_page') String? perPage});
}

/// @nodoc
class __$$ImageRequestModelImplCopyWithImpl<$Res>
    extends _$ImageRequestModelCopyWithImpl<$Res, _$ImageRequestModelImpl>
    implements _$$ImageRequestModelImplCopyWith<$Res> {
  __$$ImageRequestModelImplCopyWithImpl(_$ImageRequestModelImpl _value,
      $Res Function(_$ImageRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? q = freezed,
    Object? imageType = freezed,
    Object? page = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_$ImageRequestModelImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageRequestModelImpl implements _ImageRequestModel {
  _$ImageRequestModelImpl(
      {@JsonKey(name: 'key') this.key,
      @JsonKey(name: 'q') this.q,
      @JsonKey(name: 'image_type') this.imageType,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'per_page') this.perPage});

  factory _$ImageRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String? key;
  @override
  @JsonKey(name: 'q')
  final String? q;
  @override
  @JsonKey(name: 'image_type')
  final String? imageType;
  @override
  @JsonKey(name: 'page')
  final String? page;
  @override
  @JsonKey(name: 'per_page')
  final String? perPage;

  @override
  String toString() {
    return 'ImageRequestModel(key: $key, q: $q, imageType: $imageType, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageRequestModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, q, imageType, page, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageRequestModelImplCopyWith<_$ImageRequestModelImpl> get copyWith =>
      __$$ImageRequestModelImplCopyWithImpl<_$ImageRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ImageRequestModel implements ImageRequestModel {
  factory _ImageRequestModel(
          {@JsonKey(name: 'key') final String? key,
          @JsonKey(name: 'q') final String? q,
          @JsonKey(name: 'image_type') final String? imageType,
          @JsonKey(name: 'page') final String? page,
          @JsonKey(name: 'per_page') final String? perPage}) =
      _$ImageRequestModelImpl;

  factory _ImageRequestModel.fromJson(Map<String, dynamic> json) =
      _$ImageRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'key')
  String? get key;
  @override
  @JsonKey(name: 'q')
  String? get q;
  @override
  @JsonKey(name: 'image_type')
  String? get imageType;
  @override
  @JsonKey(name: 'page')
  String? get page;
  @override
  @JsonKey(name: 'per_page')
  String? get perPage;
  @override
  @JsonKey(ignore: true)
  _$$ImageRequestModelImplCopyWith<_$ImageRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

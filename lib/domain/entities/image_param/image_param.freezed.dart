// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageParam {
  String? get key => throw _privateConstructorUsedError;
  String? get q => throw _privateConstructorUsedError;
  String? get imageType => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;
  String? get perPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageParamCopyWith<ImageParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageParamCopyWith<$Res> {
  factory $ImageParamCopyWith(
          ImageParam value, $Res Function(ImageParam) then) =
      _$ImageParamCopyWithImpl<$Res, ImageParam>;
  @useResult
  $Res call(
      {String? key,
      String? q,
      String? imageType,
      String? page,
      String? perPage});
}

/// @nodoc
class _$ImageParamCopyWithImpl<$Res, $Val extends ImageParam>
    implements $ImageParamCopyWith<$Res> {
  _$ImageParamCopyWithImpl(this._value, this._then);

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
abstract class _$$ImageParamImplCopyWith<$Res>
    implements $ImageParamCopyWith<$Res> {
  factory _$$ImageParamImplCopyWith(
          _$ImageParamImpl value, $Res Function(_$ImageParamImpl) then) =
      __$$ImageParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? key,
      String? q,
      String? imageType,
      String? page,
      String? perPage});
}

/// @nodoc
class __$$ImageParamImplCopyWithImpl<$Res>
    extends _$ImageParamCopyWithImpl<$Res, _$ImageParamImpl>
    implements _$$ImageParamImplCopyWith<$Res> {
  __$$ImageParamImplCopyWithImpl(
      _$ImageParamImpl _value, $Res Function(_$ImageParamImpl) _then)
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
    return _then(_$ImageParamImpl(
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

class _$ImageParamImpl extends _ImageParam {
  const _$ImageParamImpl(
      {this.key = '46303201-58766dde06b0a3646e5ab4812',
      this.q = '',
      this.imageType = 'photo',
      this.page = '1',
      this.perPage = '20'})
      : super._();

  @override
  @JsonKey()
  final String? key;
  @override
  @JsonKey()
  final String? q;
  @override
  @JsonKey()
  final String? imageType;
  @override
  @JsonKey()
  final String? page;
  @override
  @JsonKey()
  final String? perPage;

  @override
  String toString() {
    return 'ImageParam(key: $key, q: $q, imageType: $imageType, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageParamImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, q, imageType, page, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageParamImplCopyWith<_$ImageParamImpl> get copyWith =>
      __$$ImageParamImplCopyWithImpl<_$ImageParamImpl>(this, _$identity);
}

abstract class _ImageParam extends ImageParam {
  const factory _ImageParam(
      {final String? key,
      final String? q,
      final String? imageType,
      final String? page,
      final String? perPage}) = _$ImageParamImpl;
  const _ImageParam._() : super._();

  @override
  String? get key;
  @override
  String? get q;
  @override
  String? get imageType;
  @override
  String? get page;
  @override
  String? get perPage;
  @override
  @JsonKey(ignore: true)
  _$$ImageParamImplCopyWith<_$ImageParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

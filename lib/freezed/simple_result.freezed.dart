// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimpleResult _$SimpleResultFromJson(Map<String, dynamic> json) {
  return _SimpleResult.fromJson(json);
}

/// @nodoc
mixin _$SimpleResult {
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  int get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleResultCopyWith<SimpleResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleResultCopyWith<$Res> {
  factory $SimpleResultCopyWith(
          SimpleResult value, $Res Function(SimpleResult) then) =
      _$SimpleResultCopyWithImpl<$Res, SimpleResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'state') int state,
      @JsonKey(name: 'success') bool success,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class _$SimpleResultCopyWithImpl<$Res, $Val extends SimpleResult>
    implements $SimpleResultCopyWith<$Res> {
  _$SimpleResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? state = null,
    Object? success = null,
    Object? type = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SimpleResultCopyWith<$Res>
    implements $SimpleResultCopyWith<$Res> {
  factory _$$_SimpleResultCopyWith(
          _$_SimpleResult value, $Res Function(_$_SimpleResult) then) =
      __$$_SimpleResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'state') int state,
      @JsonKey(name: 'success') bool success,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class __$$_SimpleResultCopyWithImpl<$Res>
    extends _$SimpleResultCopyWithImpl<$Res, _$_SimpleResult>
    implements _$$_SimpleResultCopyWith<$Res> {
  __$$_SimpleResultCopyWithImpl(
      _$_SimpleResult _value, $Res Function(_$_SimpleResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? state = null,
    Object? success = null,
    Object? type = null,
    Object? data = freezed,
  }) {
    return _then(_$_SimpleResult(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SimpleResult extends _SimpleResult {
  const _$_SimpleResult(
      {@JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'state') this.state = 0,
      @JsonKey(name: 'success') this.success = false,
      @JsonKey(name: 'type') this.type = 0,
      @JsonKey(name: 'data') this.data})
      : super._();

  factory _$_SimpleResult.fromJson(Map<String, dynamic> json) =>
      _$$_SimpleResultFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'state')
  final int state;
  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'type')
  final int type;
  @override
  @JsonKey(name: 'data')
  final dynamic data;

  @override
  String toString() {
    return 'SimpleResult(message: $message, state: $state, success: $success, type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimpleResult &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, state, success, type,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SimpleResultCopyWith<_$_SimpleResult> get copyWith =>
      __$$_SimpleResultCopyWithImpl<_$_SimpleResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SimpleResultToJson(
      this,
    );
  }
}

abstract class _SimpleResult extends SimpleResult {
  const factory _SimpleResult(
      {@JsonKey(name: 'message') final String message,
      @JsonKey(name: 'state') final int state,
      @JsonKey(name: 'success') final bool success,
      @JsonKey(name: 'type') final int type,
      @JsonKey(name: 'data') final dynamic data}) = _$_SimpleResult;
  const _SimpleResult._() : super._();

  factory _SimpleResult.fromJson(Map<String, dynamic> json) =
      _$_SimpleResult.fromJson;

  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'state')
  int get state;
  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(name: 'data')
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_SimpleResultCopyWith<_$_SimpleResult> get copyWith =>
      throw _privateConstructorUsedError;
}

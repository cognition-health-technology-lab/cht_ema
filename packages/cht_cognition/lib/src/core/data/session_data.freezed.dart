// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionData {

 String get participantId; String get sessionId; DateTime get startTime; DateTime get endTime;
/// Create a copy of SessionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionDataCopyWith<SessionData> get copyWith => _$SessionDataCopyWithImpl<SessionData>(this as SessionData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionData&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,participantId,sessionId,startTime,endTime);

@override
String toString() {
  return 'SessionData(participantId: $participantId, sessionId: $sessionId, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $SessionDataCopyWith<$Res>  {
  factory $SessionDataCopyWith(SessionData value, $Res Function(SessionData) _then) = _$SessionDataCopyWithImpl;
@useResult
$Res call({
 String participantId, String sessionId, DateTime startTime, DateTime endTime
});




}
/// @nodoc
class _$SessionDataCopyWithImpl<$Res>
    implements $SessionDataCopyWith<$Res> {
  _$SessionDataCopyWithImpl(this._self, this._then);

  final SessionData _self;
  final $Res Function(SessionData) _then;

/// Create a copy of SessionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? participantId = null,Object? sessionId = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_self.copyWith(
participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionData].
extension SessionDataPatterns on SessionData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionData value)  $default,){
final _that = this;
switch (_that) {
case _SessionData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionData value)?  $default,){
final _that = this;
switch (_that) {
case _SessionData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String participantId,  String sessionId,  DateTime startTime,  DateTime endTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionData() when $default != null:
return $default(_that.participantId,_that.sessionId,_that.startTime,_that.endTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String participantId,  String sessionId,  DateTime startTime,  DateTime endTime)  $default,) {final _that = this;
switch (_that) {
case _SessionData():
return $default(_that.participantId,_that.sessionId,_that.startTime,_that.endTime);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String participantId,  String sessionId,  DateTime startTime,  DateTime endTime)?  $default,) {final _that = this;
switch (_that) {
case _SessionData() when $default != null:
return $default(_that.participantId,_that.sessionId,_that.startTime,_that.endTime);case _:
  return null;

}
}

}

/// @nodoc


class _SessionData implements SessionData {
  const _SessionData({required this.participantId, required this.sessionId, required this.startTime, required this.endTime});
  

@override final  String participantId;
@override final  String sessionId;
@override final  DateTime startTime;
@override final  DateTime endTime;

/// Create a copy of SessionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionDataCopyWith<_SessionData> get copyWith => __$SessionDataCopyWithImpl<_SessionData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionData&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,participantId,sessionId,startTime,endTime);

@override
String toString() {
  return 'SessionData(participantId: $participantId, sessionId: $sessionId, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$SessionDataCopyWith<$Res> implements $SessionDataCopyWith<$Res> {
  factory _$SessionDataCopyWith(_SessionData value, $Res Function(_SessionData) _then) = __$SessionDataCopyWithImpl;
@override @useResult
$Res call({
 String participantId, String sessionId, DateTime startTime, DateTime endTime
});




}
/// @nodoc
class __$SessionDataCopyWithImpl<$Res>
    implements _$SessionDataCopyWith<$Res> {
  __$SessionDataCopyWithImpl(this._self, this._then);

  final _SessionData _self;
  final $Res Function(_SessionData) _then;

/// Create a copy of SessionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? participantId = null,Object? sessionId = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_SessionData(
participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trial_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrialData {

 String get participantId; String get sessionId; String get stim; String get response; DateTime get startTime; DateTime get endTime;
/// Create a copy of TrialData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrialDataCopyWith<TrialData> get copyWith => _$TrialDataCopyWithImpl<TrialData>(this as TrialData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrialData&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.stim, stim) || other.stim == stim)&&(identical(other.response, response) || other.response == response)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,participantId,sessionId,stim,response,startTime,endTime);

@override
String toString() {
  return 'TrialData(participantId: $participantId, sessionId: $sessionId, stim: $stim, response: $response, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $TrialDataCopyWith<$Res>  {
  factory $TrialDataCopyWith(TrialData value, $Res Function(TrialData) _then) = _$TrialDataCopyWithImpl;
@useResult
$Res call({
 String participantId, String sessionId, String stim, String response, DateTime startTime, DateTime endTime
});




}
/// @nodoc
class _$TrialDataCopyWithImpl<$Res>
    implements $TrialDataCopyWith<$Res> {
  _$TrialDataCopyWithImpl(this._self, this._then);

  final TrialData _self;
  final $Res Function(TrialData) _then;

/// Create a copy of TrialData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? participantId = null,Object? sessionId = null,Object? stim = null,Object? response = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_self.copyWith(
participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,stim: null == stim ? _self.stim : stim // ignore: cast_nullable_to_non_nullable
as String,response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TrialData].
extension TrialDataPatterns on TrialData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrialData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrialData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrialData value)  $default,){
final _that = this;
switch (_that) {
case _TrialData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrialData value)?  $default,){
final _that = this;
switch (_that) {
case _TrialData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String participantId,  String sessionId,  String stim,  String response,  DateTime startTime,  DateTime endTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrialData() when $default != null:
return $default(_that.participantId,_that.sessionId,_that.stim,_that.response,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String participantId,  String sessionId,  String stim,  String response,  DateTime startTime,  DateTime endTime)  $default,) {final _that = this;
switch (_that) {
case _TrialData():
return $default(_that.participantId,_that.sessionId,_that.stim,_that.response,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String participantId,  String sessionId,  String stim,  String response,  DateTime startTime,  DateTime endTime)?  $default,) {final _that = this;
switch (_that) {
case _TrialData() when $default != null:
return $default(_that.participantId,_that.sessionId,_that.stim,_that.response,_that.startTime,_that.endTime);case _:
  return null;

}
}

}

/// @nodoc


class _TrialData implements TrialData {
  const _TrialData({required this.participantId, required this.sessionId, required this.stim, required this.response, required this.startTime, required this.endTime});
  

@override final  String participantId;
@override final  String sessionId;
@override final  String stim;
@override final  String response;
@override final  DateTime startTime;
@override final  DateTime endTime;

/// Create a copy of TrialData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrialDataCopyWith<_TrialData> get copyWith => __$TrialDataCopyWithImpl<_TrialData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrialData&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.stim, stim) || other.stim == stim)&&(identical(other.response, response) || other.response == response)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,participantId,sessionId,stim,response,startTime,endTime);

@override
String toString() {
  return 'TrialData(participantId: $participantId, sessionId: $sessionId, stim: $stim, response: $response, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$TrialDataCopyWith<$Res> implements $TrialDataCopyWith<$Res> {
  factory _$TrialDataCopyWith(_TrialData value, $Res Function(_TrialData) _then) = __$TrialDataCopyWithImpl;
@override @useResult
$Res call({
 String participantId, String sessionId, String stim, String response, DateTime startTime, DateTime endTime
});




}
/// @nodoc
class __$TrialDataCopyWithImpl<$Res>
    implements _$TrialDataCopyWith<$Res> {
  __$TrialDataCopyWithImpl(this._self, this._then);

  final _TrialData _self;
  final $Res Function(_TrialData) _then;

/// Create a copy of TrialData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? participantId = null,Object? sessionId = null,Object? stim = null,Object? response = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_TrialData(
participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,stim: null == stim ? _self.stim : stim // ignore: cast_nullable_to_non_nullable
as String,response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

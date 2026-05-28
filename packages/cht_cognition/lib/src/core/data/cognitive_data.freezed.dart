// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cognitive_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CognitiveData {

 SessionData get sessionData; List<TrialData> get trialData;
/// Create a copy of CognitiveData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CognitiveDataCopyWith<CognitiveData> get copyWith => _$CognitiveDataCopyWithImpl<CognitiveData>(this as CognitiveData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CognitiveData&&(identical(other.sessionData, sessionData) || other.sessionData == sessionData)&&const DeepCollectionEquality().equals(other.trialData, trialData));
}


@override
int get hashCode => Object.hash(runtimeType,sessionData,const DeepCollectionEquality().hash(trialData));

@override
String toString() {
  return 'CognitiveData(sessionData: $sessionData, trialData: $trialData)';
}


}

/// @nodoc
abstract mixin class $CognitiveDataCopyWith<$Res>  {
  factory $CognitiveDataCopyWith(CognitiveData value, $Res Function(CognitiveData) _then) = _$CognitiveDataCopyWithImpl;
@useResult
$Res call({
 SessionData sessionData, List<TrialData> trialData
});


$SessionDataCopyWith<$Res> get sessionData;

}
/// @nodoc
class _$CognitiveDataCopyWithImpl<$Res>
    implements $CognitiveDataCopyWith<$Res> {
  _$CognitiveDataCopyWithImpl(this._self, this._then);

  final CognitiveData _self;
  final $Res Function(CognitiveData) _then;

/// Create a copy of CognitiveData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionData = null,Object? trialData = null,}) {
  return _then(_self.copyWith(
sessionData: null == sessionData ? _self.sessionData : sessionData // ignore: cast_nullable_to_non_nullable
as SessionData,trialData: null == trialData ? _self.trialData : trialData // ignore: cast_nullable_to_non_nullable
as List<TrialData>,
  ));
}
/// Create a copy of CognitiveData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionDataCopyWith<$Res> get sessionData {
  
  return $SessionDataCopyWith<$Res>(_self.sessionData, (value) {
    return _then(_self.copyWith(sessionData: value));
  });
}
}


/// Adds pattern-matching-related methods to [CognitiveData].
extension CognitiveDataPatterns on CognitiveData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CognitiveData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CognitiveData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CognitiveData value)  $default,){
final _that = this;
switch (_that) {
case _CognitiveData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CognitiveData value)?  $default,){
final _that = this;
switch (_that) {
case _CognitiveData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SessionData sessionData,  List<TrialData> trialData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CognitiveData() when $default != null:
return $default(_that.sessionData,_that.trialData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SessionData sessionData,  List<TrialData> trialData)  $default,) {final _that = this;
switch (_that) {
case _CognitiveData():
return $default(_that.sessionData,_that.trialData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SessionData sessionData,  List<TrialData> trialData)?  $default,) {final _that = this;
switch (_that) {
case _CognitiveData() when $default != null:
return $default(_that.sessionData,_that.trialData);case _:
  return null;

}
}

}

/// @nodoc


class _CognitiveData implements CognitiveData {
  const _CognitiveData({required this.sessionData, required final  List<TrialData> trialData}): _trialData = trialData;
  

@override final  SessionData sessionData;
 final  List<TrialData> _trialData;
@override List<TrialData> get trialData {
  if (_trialData is EqualUnmodifiableListView) return _trialData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trialData);
}


/// Create a copy of CognitiveData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CognitiveDataCopyWith<_CognitiveData> get copyWith => __$CognitiveDataCopyWithImpl<_CognitiveData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CognitiveData&&(identical(other.sessionData, sessionData) || other.sessionData == sessionData)&&const DeepCollectionEquality().equals(other._trialData, _trialData));
}


@override
int get hashCode => Object.hash(runtimeType,sessionData,const DeepCollectionEquality().hash(_trialData));

@override
String toString() {
  return 'CognitiveData(sessionData: $sessionData, trialData: $trialData)';
}


}

/// @nodoc
abstract mixin class _$CognitiveDataCopyWith<$Res> implements $CognitiveDataCopyWith<$Res> {
  factory _$CognitiveDataCopyWith(_CognitiveData value, $Res Function(_CognitiveData) _then) = __$CognitiveDataCopyWithImpl;
@override @useResult
$Res call({
 SessionData sessionData, List<TrialData> trialData
});


@override $SessionDataCopyWith<$Res> get sessionData;

}
/// @nodoc
class __$CognitiveDataCopyWithImpl<$Res>
    implements _$CognitiveDataCopyWith<$Res> {
  __$CognitiveDataCopyWithImpl(this._self, this._then);

  final _CognitiveData _self;
  final $Res Function(_CognitiveData) _then;

/// Create a copy of CognitiveData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionData = null,Object? trialData = null,}) {
  return _then(_CognitiveData(
sessionData: null == sessionData ? _self.sessionData : sessionData // ignore: cast_nullable_to_non_nullable
as SessionData,trialData: null == trialData ? _self._trialData : trialData // ignore: cast_nullable_to_non_nullable
as List<TrialData>,
  ));
}

/// Create a copy of CognitiveData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionDataCopyWith<$Res> get sessionData {
  
  return $SessionDataCopyWith<$Res>(_self.sessionData, (value) {
    return _then(_self.copyWith(sessionData: value));
  });
}
}

// dart format on

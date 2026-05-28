// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Trial<T> {

 T get stim;
/// Create a copy of Trial
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrialCopyWith<T, Trial<T>> get copyWith => _$TrialCopyWithImpl<T, Trial<T>>(this as Trial<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Trial<T>&&const DeepCollectionEquality().equals(other.stim, stim));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stim));

@override
String toString() {
  return 'Trial<$T>(stim: $stim)';
}


}

/// @nodoc
abstract mixin class $TrialCopyWith<T,$Res>  {
  factory $TrialCopyWith(Trial<T> value, $Res Function(Trial<T>) _then) = _$TrialCopyWithImpl;
@useResult
$Res call({
 T stim
});




}
/// @nodoc
class _$TrialCopyWithImpl<T,$Res>
    implements $TrialCopyWith<T, $Res> {
  _$TrialCopyWithImpl(this._self, this._then);

  final Trial<T> _self;
  final $Res Function(Trial<T>) _then;

/// Create a copy of Trial
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stim = freezed,}) {
  return _then(_self.copyWith(
stim: freezed == stim ? _self.stim : stim // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [Trial].
extension TrialPatterns<T> on Trial<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Trial<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Trial() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Trial<T> value)  $default,){
final _that = this;
switch (_that) {
case _Trial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Trial<T> value)?  $default,){
final _that = this;
switch (_that) {
case _Trial() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( T stim)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Trial() when $default != null:
return $default(_that.stim);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( T stim)  $default,) {final _that = this;
switch (_that) {
case _Trial():
return $default(_that.stim);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( T stim)?  $default,) {final _that = this;
switch (_that) {
case _Trial() when $default != null:
return $default(_that.stim);case _:
  return null;

}
}

}

/// @nodoc


class _Trial<T> implements Trial<T> {
  const _Trial({required this.stim});
  

@override final  T stim;

/// Create a copy of Trial
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrialCopyWith<T, _Trial<T>> get copyWith => __$TrialCopyWithImpl<T, _Trial<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trial<T>&&const DeepCollectionEquality().equals(other.stim, stim));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stim));

@override
String toString() {
  return 'Trial<$T>(stim: $stim)';
}


}

/// @nodoc
abstract mixin class _$TrialCopyWith<T,$Res> implements $TrialCopyWith<T, $Res> {
  factory _$TrialCopyWith(_Trial<T> value, $Res Function(_Trial<T>) _then) = __$TrialCopyWithImpl;
@override @useResult
$Res call({
 T stim
});




}
/// @nodoc
class __$TrialCopyWithImpl<T,$Res>
    implements _$TrialCopyWith<T, $Res> {
  __$TrialCopyWithImpl(this._self, this._then);

  final _Trial<T> _self;
  final $Res Function(_Trial<T>) _then;

/// Create a copy of Trial
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stim = freezed,}) {
  return _then(_Trial<T>(
stim: freezed == stim ? _self.stim : stim // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on

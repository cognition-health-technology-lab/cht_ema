// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'n_back_stim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NBackStim {

 NBackStimType get currentStim; NBackStimType get previousStim; bool get matching;
/// Create a copy of NBackStim
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NBackStimCopyWith<NBackStim> get copyWith => _$NBackStimCopyWithImpl<NBackStim>(this as NBackStim, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NBackStim&&(identical(other.currentStim, currentStim) || other.currentStim == currentStim)&&(identical(other.previousStim, previousStim) || other.previousStim == previousStim)&&(identical(other.matching, matching) || other.matching == matching));
}


@override
int get hashCode => Object.hash(runtimeType,currentStim,previousStim,matching);

@override
String toString() {
  return 'NBackStim(currentStim: $currentStim, previousStim: $previousStim, matching: $matching)';
}


}

/// @nodoc
abstract mixin class $NBackStimCopyWith<$Res>  {
  factory $NBackStimCopyWith(NBackStim value, $Res Function(NBackStim) _then) = _$NBackStimCopyWithImpl;
@useResult
$Res call({
 NBackStimType currentStim, NBackStimType previousStim, bool matching
});




}
/// @nodoc
class _$NBackStimCopyWithImpl<$Res>
    implements $NBackStimCopyWith<$Res> {
  _$NBackStimCopyWithImpl(this._self, this._then);

  final NBackStim _self;
  final $Res Function(NBackStim) _then;

/// Create a copy of NBackStim
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentStim = null,Object? previousStim = null,Object? matching = null,}) {
  return _then(_self.copyWith(
currentStim: null == currentStim ? _self.currentStim : currentStim // ignore: cast_nullable_to_non_nullable
as NBackStimType,previousStim: null == previousStim ? _self.previousStim : previousStim // ignore: cast_nullable_to_non_nullable
as NBackStimType,matching: null == matching ? _self.matching : matching // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NBackStim].
extension NBackStimPatterns on NBackStim {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NBackStim value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NBackStim() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NBackStim value)  $default,){
final _that = this;
switch (_that) {
case _NBackStim():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NBackStim value)?  $default,){
final _that = this;
switch (_that) {
case _NBackStim() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NBackStimType currentStim,  NBackStimType previousStim,  bool matching)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NBackStim() when $default != null:
return $default(_that.currentStim,_that.previousStim,_that.matching);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NBackStimType currentStim,  NBackStimType previousStim,  bool matching)  $default,) {final _that = this;
switch (_that) {
case _NBackStim():
return $default(_that.currentStim,_that.previousStim,_that.matching);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NBackStimType currentStim,  NBackStimType previousStim,  bool matching)?  $default,) {final _that = this;
switch (_that) {
case _NBackStim() when $default != null:
return $default(_that.currentStim,_that.previousStim,_that.matching);case _:
  return null;

}
}

}

/// @nodoc


class _NBackStim implements NBackStim {
  const _NBackStim({required this.currentStim, required this.previousStim, required this.matching});
  

@override final  NBackStimType currentStim;
@override final  NBackStimType previousStim;
@override final  bool matching;

/// Create a copy of NBackStim
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NBackStimCopyWith<_NBackStim> get copyWith => __$NBackStimCopyWithImpl<_NBackStim>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NBackStim&&(identical(other.currentStim, currentStim) || other.currentStim == currentStim)&&(identical(other.previousStim, previousStim) || other.previousStim == previousStim)&&(identical(other.matching, matching) || other.matching == matching));
}


@override
int get hashCode => Object.hash(runtimeType,currentStim,previousStim,matching);

@override
String toString() {
  return 'NBackStim(currentStim: $currentStim, previousStim: $previousStim, matching: $matching)';
}


}

/// @nodoc
abstract mixin class _$NBackStimCopyWith<$Res> implements $NBackStimCopyWith<$Res> {
  factory _$NBackStimCopyWith(_NBackStim value, $Res Function(_NBackStim) _then) = __$NBackStimCopyWithImpl;
@override @useResult
$Res call({
 NBackStimType currentStim, NBackStimType previousStim, bool matching
});




}
/// @nodoc
class __$NBackStimCopyWithImpl<$Res>
    implements _$NBackStimCopyWith<$Res> {
  __$NBackStimCopyWithImpl(this._self, this._then);

  final _NBackStim _self;
  final $Res Function(_NBackStim) _then;

/// Create a copy of NBackStim
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentStim = null,Object? previousStim = null,Object? matching = null,}) {
  return _then(_NBackStim(
currentStim: null == currentStim ? _self.currentStim : currentStim // ignore: cast_nullable_to_non_nullable
as NBackStimType,previousStim: null == previousStim ? _self.previousStim : previousStim // ignore: cast_nullable_to_non_nullable
as NBackStimType,matching: null == matching ? _self.matching : matching // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

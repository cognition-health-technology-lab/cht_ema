// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cognitive_task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CognitiveTaskState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CognitiveTaskState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CognitiveTaskState<$T>()';
}


}

/// @nodoc
class $CognitiveTaskStateCopyWith<T,$Res>  {
$CognitiveTaskStateCopyWith(CognitiveTaskState<T> _, $Res Function(CognitiveTaskState<T>) __);
}


/// Adds pattern-matching-related methods to [CognitiveTaskState].
extension CognitiveTaskStatePatterns<T> on CognitiveTaskState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Instructions<T> value)?  instructions,TResult Function( _Trial<T> value)?  trial,TResult Function( _ITI<T> value)?  iti,TResult Function( _Rest<T> value)?  rest,TResult Function( _Processing<T> value)?  processing,TResult Function( _Finished<T> value)?  finished,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Instructions() when instructions != null:
return instructions(_that);case _Trial() when trial != null:
return trial(_that);case _ITI() when iti != null:
return iti(_that);case _Rest() when rest != null:
return rest(_that);case _Processing() when processing != null:
return processing(_that);case _Finished() when finished != null:
return finished(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Instructions<T> value)  instructions,required TResult Function( _Trial<T> value)  trial,required TResult Function( _ITI<T> value)  iti,required TResult Function( _Rest<T> value)  rest,required TResult Function( _Processing<T> value)  processing,required TResult Function( _Finished<T> value)  finished,}){
final _that = this;
switch (_that) {
case _Instructions():
return instructions(_that);case _Trial():
return trial(_that);case _ITI():
return iti(_that);case _Rest():
return rest(_that);case _Processing():
return processing(_that);case _Finished():
return finished(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Instructions<T> value)?  instructions,TResult? Function( _Trial<T> value)?  trial,TResult? Function( _ITI<T> value)?  iti,TResult? Function( _Rest<T> value)?  rest,TResult? Function( _Processing<T> value)?  processing,TResult? Function( _Finished<T> value)?  finished,}){
final _that = this;
switch (_that) {
case _Instructions() when instructions != null:
return instructions(_that);case _Trial() when trial != null:
return trial(_that);case _ITI() when iti != null:
return iti(_that);case _Rest() when rest != null:
return rest(_that);case _Processing() when processing != null:
return processing(_that);case _Finished() when finished != null:
return finished(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  instructions,TResult Function( T trial)?  trial,TResult Function()?  iti,TResult Function()?  rest,TResult Function()?  processing,TResult Function()?  finished,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Instructions() when instructions != null:
return instructions();case _Trial() when trial != null:
return trial(_that.trial);case _ITI() when iti != null:
return iti();case _Rest() when rest != null:
return rest();case _Processing() when processing != null:
return processing();case _Finished() when finished != null:
return finished();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  instructions,required TResult Function( T trial)  trial,required TResult Function()  iti,required TResult Function()  rest,required TResult Function()  processing,required TResult Function()  finished,}) {final _that = this;
switch (_that) {
case _Instructions():
return instructions();case _Trial():
return trial(_that.trial);case _ITI():
return iti();case _Rest():
return rest();case _Processing():
return processing();case _Finished():
return finished();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  instructions,TResult? Function( T trial)?  trial,TResult? Function()?  iti,TResult? Function()?  rest,TResult? Function()?  processing,TResult? Function()?  finished,}) {final _that = this;
switch (_that) {
case _Instructions() when instructions != null:
return instructions();case _Trial() when trial != null:
return trial(_that.trial);case _ITI() when iti != null:
return iti();case _Rest() when rest != null:
return rest();case _Processing() when processing != null:
return processing();case _Finished() when finished != null:
return finished();case _:
  return null;

}
}

}

/// @nodoc


class _Instructions<T> implements CognitiveTaskState<T> {
  const _Instructions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Instructions<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CognitiveTaskState<$T>.instructions()';
}


}




/// @nodoc


class _Trial<T> implements CognitiveTaskState<T> {
  const _Trial({required this.trial});
  

 final  T trial;

/// Create a copy of CognitiveTaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrialCopyWith<T, _Trial<T>> get copyWith => __$TrialCopyWithImpl<T, _Trial<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trial<T>&&const DeepCollectionEquality().equals(other.trial, trial));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(trial));

@override
String toString() {
  return 'CognitiveTaskState<$T>.trial(trial: $trial)';
}


}

/// @nodoc
abstract mixin class _$TrialCopyWith<T,$Res> implements $CognitiveTaskStateCopyWith<T, $Res> {
  factory _$TrialCopyWith(_Trial<T> value, $Res Function(_Trial<T>) _then) = __$TrialCopyWithImpl;
@useResult
$Res call({
 T trial
});




}
/// @nodoc
class __$TrialCopyWithImpl<T,$Res>
    implements _$TrialCopyWith<T, $Res> {
  __$TrialCopyWithImpl(this._self, this._then);

  final _Trial<T> _self;
  final $Res Function(_Trial<T>) _then;

/// Create a copy of CognitiveTaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? trial = freezed,}) {
  return _then(_Trial<T>(
trial: freezed == trial ? _self.trial : trial // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _ITI<T> implements CognitiveTaskState<T> {
  const _ITI();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ITI<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CognitiveTaskState<$T>.iti()';
}


}




/// @nodoc


class _Rest<T> implements CognitiveTaskState<T> {
  const _Rest();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rest<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CognitiveTaskState<$T>.rest()';
}


}




/// @nodoc


class _Processing<T> implements CognitiveTaskState<T> {
  const _Processing();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Processing<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CognitiveTaskState<$T>.processing()';
}


}




/// @nodoc


class _Finished<T> implements CognitiveTaskState<T> {
  const _Finished();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Finished<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CognitiveTaskState<$T>.finished()';
}


}




// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int initialIndex) initialIndex,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(int count) updateCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int initialIndex)? initialIndex,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(int count)? updateCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int initialIndex)? initialIndex,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(int count)? updateCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitialIndex value) initialIndex,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(updateCount value) updateCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitialIndex value)? initialIndex,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(updateCount value)? updateCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitialIndex value)? initialIndex,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(updateCount value)? updateCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListEventCopyWith<$Res> {
  factory $DataListEventCopyWith(
          DataListEvent value, $Res Function(DataListEvent) then) =
      _$DataListEventCopyWithImpl<$Res, DataListEvent>;
}

/// @nodoc
class _$DataListEventCopyWithImpl<$Res, $Val extends DataListEvent>
    implements $DataListEventCopyWith<$Res> {
  _$DataListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DataListEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DataListEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int initialIndex) initialIndex,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(int count) updateCount,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int initialIndex)? initialIndex,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(int count)? updateCount,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int initialIndex)? initialIndex,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(int count)? updateCount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitialIndex value) initialIndex,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(updateCount value) updateCount,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitialIndex value)? initialIndex,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(updateCount value)? updateCount,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitialIndex value)? initialIndex,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(updateCount value)? updateCount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements DataListEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$InitialIndexImplCopyWith<$Res> {
  factory _$$InitialIndexImplCopyWith(
          _$InitialIndexImpl value, $Res Function(_$InitialIndexImpl) then) =
      __$$InitialIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int initialIndex});
}

/// @nodoc
class __$$InitialIndexImplCopyWithImpl<$Res>
    extends _$DataListEventCopyWithImpl<$Res, _$InitialIndexImpl>
    implements _$$InitialIndexImplCopyWith<$Res> {
  __$$InitialIndexImplCopyWithImpl(
      _$InitialIndexImpl _value, $Res Function(_$InitialIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialIndex = null,
  }) {
    return _then(_$InitialIndexImpl(
      null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialIndexImpl implements InitialIndex {
  const _$InitialIndexImpl(this.initialIndex);

  @override
  final int initialIndex;

  @override
  String toString() {
    return 'DataListEvent.initialIndex(initialIndex: $initialIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialIndexImpl &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialIndexImplCopyWith<_$InitialIndexImpl> get copyWith =>
      __$$InitialIndexImplCopyWithImpl<_$InitialIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int initialIndex) initialIndex,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(int count) updateCount,
  }) {
    return initialIndex(this.initialIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int initialIndex)? initialIndex,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(int count)? updateCount,
  }) {
    return initialIndex?.call(this.initialIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int initialIndex)? initialIndex,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(int count)? updateCount,
    required TResult orElse(),
  }) {
    if (initialIndex != null) {
      return initialIndex(this.initialIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitialIndex value) initialIndex,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(updateCount value) updateCount,
  }) {
    return initialIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitialIndex value)? initialIndex,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(updateCount value)? updateCount,
  }) {
    return initialIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitialIndex value)? initialIndex,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(updateCount value)? updateCount,
    required TResult orElse(),
  }) {
    if (initialIndex != null) {
      return initialIndex(this);
    }
    return orElse();
  }
}

abstract class InitialIndex implements DataListEvent {
  const factory InitialIndex(final int initialIndex) = _$InitialIndexImpl;

  int get initialIndex;
  @JsonKey(ignore: true)
  _$$InitialIndexImplCopyWith<_$InitialIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementImplCopyWith<$Res> {
  factory _$$IncrementImplCopyWith(
          _$IncrementImpl value, $Res Function(_$IncrementImpl) then) =
      __$$IncrementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$IncrementImplCopyWithImpl<$Res>
    extends _$DataListEventCopyWithImpl<$Res, _$IncrementImpl>
    implements _$$IncrementImplCopyWith<$Res> {
  __$$IncrementImplCopyWithImpl(
      _$IncrementImpl _value, $Res Function(_$IncrementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$IncrementImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncrementImpl implements Increment {
  const _$IncrementImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DataListEvent.increment(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      __$$IncrementImplCopyWithImpl<_$IncrementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int initialIndex) initialIndex,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(int count) updateCount,
  }) {
    return increment(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int initialIndex)? initialIndex,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(int count)? updateCount,
  }) {
    return increment?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int initialIndex)? initialIndex,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(int count)? updateCount,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitialIndex value) initialIndex,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(updateCount value) updateCount,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitialIndex value)? initialIndex,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(updateCount value)? updateCount,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitialIndex value)? initialIndex,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(updateCount value)? updateCount,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class Increment implements DataListEvent {
  const factory Increment(final int index) = _$IncrementImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementImplCopyWith<$Res> {
  factory _$$DecrementImplCopyWith(
          _$DecrementImpl value, $Res Function(_$DecrementImpl) then) =
      __$$DecrementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DecrementImplCopyWithImpl<$Res>
    extends _$DataListEventCopyWithImpl<$Res, _$DecrementImpl>
    implements _$$DecrementImplCopyWith<$Res> {
  __$$DecrementImplCopyWithImpl(
      _$DecrementImpl _value, $Res Function(_$DecrementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DecrementImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DecrementImpl implements Decrement {
  const _$DecrementImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DataListEvent.decrement(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementImplCopyWith<_$DecrementImpl> get copyWith =>
      __$$DecrementImplCopyWithImpl<_$DecrementImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int initialIndex) initialIndex,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(int count) updateCount,
  }) {
    return decrement(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int initialIndex)? initialIndex,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(int count)? updateCount,
  }) {
    return decrement?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int initialIndex)? initialIndex,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(int count)? updateCount,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitialIndex value) initialIndex,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(updateCount value) updateCount,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitialIndex value)? initialIndex,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(updateCount value)? updateCount,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitialIndex value)? initialIndex,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(updateCount value)? updateCount,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class Decrement implements DataListEvent {
  const factory Decrement(final int index) = _$DecrementImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DecrementImplCopyWith<_$DecrementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateCountImplCopyWith<$Res> {
  factory _$$updateCountImplCopyWith(
          _$updateCountImpl value, $Res Function(_$updateCountImpl) then) =
      __$$updateCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$updateCountImplCopyWithImpl<$Res>
    extends _$DataListEventCopyWithImpl<$Res, _$updateCountImpl>
    implements _$$updateCountImplCopyWith<$Res> {
  __$$updateCountImplCopyWithImpl(
      _$updateCountImpl _value, $Res Function(_$updateCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$updateCountImpl(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$updateCountImpl implements updateCount {
  const _$updateCountImpl(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'DataListEvent.updateCount(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateCountImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateCountImplCopyWith<_$updateCountImpl> get copyWith =>
      __$$updateCountImplCopyWithImpl<_$updateCountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int initialIndex) initialIndex,
    required TResult Function(int index) increment,
    required TResult Function(int index) decrement,
    required TResult Function(int count) updateCount,
  }) {
    return updateCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int initialIndex)? initialIndex,
    TResult? Function(int index)? increment,
    TResult? Function(int index)? decrement,
    TResult? Function(int count)? updateCount,
  }) {
    return updateCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int initialIndex)? initialIndex,
    TResult Function(int index)? increment,
    TResult Function(int index)? decrement,
    TResult Function(int count)? updateCount,
    required TResult orElse(),
  }) {
    if (updateCount != null) {
      return updateCount(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(InitialIndex value) initialIndex,
    required TResult Function(Increment value) increment,
    required TResult Function(Decrement value) decrement,
    required TResult Function(updateCount value) updateCount,
  }) {
    return updateCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(InitialIndex value)? initialIndex,
    TResult? Function(Increment value)? increment,
    TResult? Function(Decrement value)? decrement,
    TResult? Function(updateCount value)? updateCount,
  }) {
    return updateCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(InitialIndex value)? initialIndex,
    TResult Function(Increment value)? increment,
    TResult Function(Decrement value)? decrement,
    TResult Function(updateCount value)? updateCount,
    required TResult orElse(),
  }) {
    if (updateCount != null) {
      return updateCount(this);
    }
    return orElse();
  }
}

abstract class updateCount implements DataListEvent {
  const factory updateCount(final int count) = _$updateCountImpl;

  int get count;
  @JsonKey(ignore: true)
  _$$updateCountImplCopyWith<_$updateCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataListState {
  BlocStatus get status => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  int? get initialIndex => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataListStateCopyWith<DataListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListStateCopyWith<$Res> {
  factory $DataListStateCopyWith(
          DataListState value, $Res Function(DataListState) then) =
      _$DataListStateCopyWithImpl<$Res, DataListState>;
  @useResult
  $Res call(
      {BlocStatus status,
      int? index,
      int? initialIndex,
      int? count,
      UserModel? userModel});

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$DataListStateCopyWithImpl<$Res, $Val extends DataListState>
    implements $DataListStateCopyWith<$Res> {
  _$DataListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? index = freezed,
    Object? initialIndex = freezed,
    Object? count = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      initialIndex: freezed == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataListStateImplCopyWith<$Res>
    implements $DataListStateCopyWith<$Res> {
  factory _$$DataListStateImplCopyWith(
          _$DataListStateImpl value, $Res Function(_$DataListStateImpl) then) =
      __$$DataListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      int? index,
      int? initialIndex,
      int? count,
      UserModel? userModel});

  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$DataListStateImplCopyWithImpl<$Res>
    extends _$DataListStateCopyWithImpl<$Res, _$DataListStateImpl>
    implements _$$DataListStateImplCopyWith<$Res> {
  __$$DataListStateImplCopyWithImpl(
      _$DataListStateImpl _value, $Res Function(_$DataListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? index = freezed,
    Object? initialIndex = freezed,
    Object? count = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_$DataListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      initialIndex: freezed == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$DataListStateImpl implements _DataListState {
  const _$DataListStateImpl(
      {required this.status,
      this.index,
      this.initialIndex,
      this.count,
      this.userModel});

  @override
  final BlocStatus status;
  @override
  final int? index;
  @override
  final int? initialIndex;
  @override
  final int? count;
  @override
  final UserModel? userModel;

  @override
  String toString() {
    return 'DataListState(status: $status, index: $index, initialIndex: $initialIndex, count: $count, userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, index, initialIndex, count, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataListStateImplCopyWith<_$DataListStateImpl> get copyWith =>
      __$$DataListStateImplCopyWithImpl<_$DataListStateImpl>(this, _$identity);
}

abstract class _DataListState implements DataListState {
  const factory _DataListState(
      {required final BlocStatus status,
      final int? index,
      final int? initialIndex,
      final int? count,
      final UserModel? userModel}) = _$DataListStateImpl;

  @override
  BlocStatus get status;
  @override
  int? get index;
  @override
  int? get initialIndex;
  @override
  int? get count;
  @override
  UserModel? get userModel;
  @override
  @JsonKey(ignore: true)
  _$$DataListStateImplCopyWith<_$DataListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

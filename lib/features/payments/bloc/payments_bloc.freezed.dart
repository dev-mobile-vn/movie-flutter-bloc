// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPayments,
    required TResult Function(Payment payment) onSelectedMethod,
    required TResult Function(String router) onNavigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPayments,
    TResult? Function(Payment payment)? onSelectedMethod,
    TResult? Function(String router)? onNavigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPayments,
    TResult Function(Payment payment)? onSelectedMethod,
    TResult Function(String router)? onNavigate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPayments value) getPayments,
    required TResult Function(_OnSelectedMethod value) onSelectedMethod,
    required TResult Function(_OnNavigate value) onNavigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPayments value)? getPayments,
    TResult? Function(_OnSelectedMethod value)? onSelectedMethod,
    TResult? Function(_OnNavigate value)? onNavigate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPayments value)? getPayments,
    TResult Function(_OnSelectedMethod value)? onSelectedMethod,
    TResult Function(_OnNavigate value)? onNavigate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsEventCopyWith<$Res> {
  factory $PaymentsEventCopyWith(
          PaymentsEvent value, $Res Function(PaymentsEvent) then) =
      _$PaymentsEventCopyWithImpl<$Res, PaymentsEvent>;
}

/// @nodoc
class _$PaymentsEventCopyWithImpl<$Res, $Val extends PaymentsEvent>
    implements $PaymentsEventCopyWith<$Res> {
  _$PaymentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPaymentsImplCopyWith<$Res> {
  factory _$$GetPaymentsImplCopyWith(
          _$GetPaymentsImpl value, $Res Function(_$GetPaymentsImpl) then) =
      __$$GetPaymentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPaymentsImplCopyWithImpl<$Res>
    extends _$PaymentsEventCopyWithImpl<$Res, _$GetPaymentsImpl>
    implements _$$GetPaymentsImplCopyWith<$Res> {
  __$$GetPaymentsImplCopyWithImpl(
      _$GetPaymentsImpl _value, $Res Function(_$GetPaymentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPaymentsImpl implements _GetPayments {
  const _$GetPaymentsImpl();

  @override
  String toString() {
    return 'PaymentsEvent.getPayments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPaymentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPayments,
    required TResult Function(Payment payment) onSelectedMethod,
    required TResult Function(String router) onNavigate,
  }) {
    return getPayments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPayments,
    TResult? Function(Payment payment)? onSelectedMethod,
    TResult? Function(String router)? onNavigate,
  }) {
    return getPayments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPayments,
    TResult Function(Payment payment)? onSelectedMethod,
    TResult Function(String router)? onNavigate,
    required TResult orElse(),
  }) {
    if (getPayments != null) {
      return getPayments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPayments value) getPayments,
    required TResult Function(_OnSelectedMethod value) onSelectedMethod,
    required TResult Function(_OnNavigate value) onNavigate,
  }) {
    return getPayments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPayments value)? getPayments,
    TResult? Function(_OnSelectedMethod value)? onSelectedMethod,
    TResult? Function(_OnNavigate value)? onNavigate,
  }) {
    return getPayments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPayments value)? getPayments,
    TResult Function(_OnSelectedMethod value)? onSelectedMethod,
    TResult Function(_OnNavigate value)? onNavigate,
    required TResult orElse(),
  }) {
    if (getPayments != null) {
      return getPayments(this);
    }
    return orElse();
  }
}

abstract class _GetPayments implements PaymentsEvent {
  const factory _GetPayments() = _$GetPaymentsImpl;
}

/// @nodoc
abstract class _$$OnSelectedMethodImplCopyWith<$Res> {
  factory _$$OnSelectedMethodImplCopyWith(_$OnSelectedMethodImpl value,
          $Res Function(_$OnSelectedMethodImpl) then) =
      __$$OnSelectedMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Payment payment});
}

/// @nodoc
class __$$OnSelectedMethodImplCopyWithImpl<$Res>
    extends _$PaymentsEventCopyWithImpl<$Res, _$OnSelectedMethodImpl>
    implements _$$OnSelectedMethodImplCopyWith<$Res> {
  __$$OnSelectedMethodImplCopyWithImpl(_$OnSelectedMethodImpl _value,
      $Res Function(_$OnSelectedMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$OnSelectedMethodImpl(
      null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }
}

/// @nodoc

class _$OnSelectedMethodImpl implements _OnSelectedMethod {
  const _$OnSelectedMethodImpl(this.payment);

  @override
  final Payment payment;

  @override
  String toString() {
    return 'PaymentsEvent.onSelectedMethod(payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectedMethodImpl &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment);

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectedMethodImplCopyWith<_$OnSelectedMethodImpl> get copyWith =>
      __$$OnSelectedMethodImplCopyWithImpl<_$OnSelectedMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPayments,
    required TResult Function(Payment payment) onSelectedMethod,
    required TResult Function(String router) onNavigate,
  }) {
    return onSelectedMethod(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPayments,
    TResult? Function(Payment payment)? onSelectedMethod,
    TResult? Function(String router)? onNavigate,
  }) {
    return onSelectedMethod?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPayments,
    TResult Function(Payment payment)? onSelectedMethod,
    TResult Function(String router)? onNavigate,
    required TResult orElse(),
  }) {
    if (onSelectedMethod != null) {
      return onSelectedMethod(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPayments value) getPayments,
    required TResult Function(_OnSelectedMethod value) onSelectedMethod,
    required TResult Function(_OnNavigate value) onNavigate,
  }) {
    return onSelectedMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPayments value)? getPayments,
    TResult? Function(_OnSelectedMethod value)? onSelectedMethod,
    TResult? Function(_OnNavigate value)? onNavigate,
  }) {
    return onSelectedMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPayments value)? getPayments,
    TResult Function(_OnSelectedMethod value)? onSelectedMethod,
    TResult Function(_OnNavigate value)? onNavigate,
    required TResult orElse(),
  }) {
    if (onSelectedMethod != null) {
      return onSelectedMethod(this);
    }
    return orElse();
  }
}

abstract class _OnSelectedMethod implements PaymentsEvent {
  const factory _OnSelectedMethod(final Payment payment) =
      _$OnSelectedMethodImpl;

  Payment get payment;

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSelectedMethodImplCopyWith<_$OnSelectedMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNavigateImplCopyWith<$Res> {
  factory _$$OnNavigateImplCopyWith(
          _$OnNavigateImpl value, $Res Function(_$OnNavigateImpl) then) =
      __$$OnNavigateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String router});
}

/// @nodoc
class __$$OnNavigateImplCopyWithImpl<$Res>
    extends _$PaymentsEventCopyWithImpl<$Res, _$OnNavigateImpl>
    implements _$$OnNavigateImplCopyWith<$Res> {
  __$$OnNavigateImplCopyWithImpl(
      _$OnNavigateImpl _value, $Res Function(_$OnNavigateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? router = null,
  }) {
    return _then(_$OnNavigateImpl(
      null == router
          ? _value.router
          : router // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnNavigateImpl implements _OnNavigate {
  const _$OnNavigateImpl(this.router);

  @override
  final String router;

  @override
  String toString() {
    return 'PaymentsEvent.onNavigate(router: $router)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNavigateImpl &&
            (identical(other.router, router) || other.router == router));
  }

  @override
  int get hashCode => Object.hash(runtimeType, router);

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNavigateImplCopyWith<_$OnNavigateImpl> get copyWith =>
      __$$OnNavigateImplCopyWithImpl<_$OnNavigateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPayments,
    required TResult Function(Payment payment) onSelectedMethod,
    required TResult Function(String router) onNavigate,
  }) {
    return onNavigate(router);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPayments,
    TResult? Function(Payment payment)? onSelectedMethod,
    TResult? Function(String router)? onNavigate,
  }) {
    return onNavigate?.call(router);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPayments,
    TResult Function(Payment payment)? onSelectedMethod,
    TResult Function(String router)? onNavigate,
    required TResult orElse(),
  }) {
    if (onNavigate != null) {
      return onNavigate(router);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPayments value) getPayments,
    required TResult Function(_OnSelectedMethod value) onSelectedMethod,
    required TResult Function(_OnNavigate value) onNavigate,
  }) {
    return onNavigate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPayments value)? getPayments,
    TResult? Function(_OnSelectedMethod value)? onSelectedMethod,
    TResult? Function(_OnNavigate value)? onNavigate,
  }) {
    return onNavigate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPayments value)? getPayments,
    TResult Function(_OnSelectedMethod value)? onSelectedMethod,
    TResult Function(_OnNavigate value)? onNavigate,
    required TResult orElse(),
  }) {
    if (onNavigate != null) {
      return onNavigate(this);
    }
    return orElse();
  }
}

abstract class _OnNavigate implements PaymentsEvent {
  const factory _OnNavigate(final String router) = _$OnNavigateImpl;

  String get router;

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNavigateImplCopyWith<_$OnNavigateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentsState {
  List<Payment> get payments => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  PageCommand? get pageCommand => throw _privateConstructorUsedError;

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentsStateCopyWith<PaymentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsStateCopyWith<$Res> {
  factory $PaymentsStateCopyWith(
          PaymentsState value, $Res Function(PaymentsState) then) =
      _$PaymentsStateCopyWithImpl<$Res, PaymentsState>;
  @useResult
  $Res call(
      {List<Payment> payments,
      String? paymentMethod,
      PageCommand? pageCommand});
}

/// @nodoc
class _$PaymentsStateCopyWithImpl<$Res, $Val extends PaymentsState>
    implements $PaymentsStateCopyWith<$Res> {
  _$PaymentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
    Object? paymentMethod = freezed,
    Object? pageCommand = freezed,
  }) {
    return _then(_value.copyWith(
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentsStateImplCopyWith<$Res>
    implements $PaymentsStateCopyWith<$Res> {
  factory _$$PaymentsStateImplCopyWith(
          _$PaymentsStateImpl value, $Res Function(_$PaymentsStateImpl) then) =
      __$$PaymentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Payment> payments,
      String? paymentMethod,
      PageCommand? pageCommand});
}

/// @nodoc
class __$$PaymentsStateImplCopyWithImpl<$Res>
    extends _$PaymentsStateCopyWithImpl<$Res, _$PaymentsStateImpl>
    implements _$$PaymentsStateImplCopyWith<$Res> {
  __$$PaymentsStateImplCopyWithImpl(
      _$PaymentsStateImpl _value, $Res Function(_$PaymentsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
    Object? paymentMethod = freezed,
    Object? pageCommand = freezed,
  }) {
    return _then(_$PaymentsStateImpl(
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCommand: freezed == pageCommand
          ? _value.pageCommand
          : pageCommand // ignore: cast_nullable_to_non_nullable
              as PageCommand?,
    ));
  }
}

/// @nodoc

class _$PaymentsStateImpl extends _PaymentsState {
  const _$PaymentsStateImpl(
      {final List<Payment> payments = const [],
      this.paymentMethod,
      this.pageCommand})
      : _payments = payments,
        super._();

  final List<Payment> _payments;
  @override
  @JsonKey()
  List<Payment> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final String? paymentMethod;
  @override
  final PageCommand? pageCommand;

  @override
  String toString() {
    return 'PaymentsState(payments: $payments, paymentMethod: $paymentMethod, pageCommand: $pageCommand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsStateImpl &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.pageCommand, pageCommand) ||
                other.pageCommand == pageCommand));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_payments),
      paymentMethod,
      pageCommand);

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsStateImplCopyWith<_$PaymentsStateImpl> get copyWith =>
      __$$PaymentsStateImplCopyWithImpl<_$PaymentsStateImpl>(this, _$identity);
}

abstract class _PaymentsState extends PaymentsState {
  const factory _PaymentsState(
      {final List<Payment> payments,
      final String? paymentMethod,
      final PageCommand? pageCommand}) = _$PaymentsStateImpl;
  const _PaymentsState._() : super._();

  @override
  List<Payment> get payments;
  @override
  String? get paymentMethod;
  @override
  PageCommand? get pageCommand;

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentsStateImplCopyWith<_$PaymentsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
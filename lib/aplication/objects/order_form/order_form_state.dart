part of 'order_form_bloc.dart';

@freezed
class OrderFormState with _$OrderFormState {
  const factory OrderFormState({
    required OrderM order,
    required bool isSubmitting,
    required bool showErrorMessage,
    required Option<Either<BobjectFailure, Unit>> failureOrOption,
  }) = _OrderFormState;

  factory OrderFormState.initial() => OrderFormState(
        order: OrderM.empty(),
        isSubmitting: false,
        showErrorMessage: false,
        failureOrOption: none(),
      );
}

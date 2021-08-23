import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:drosdogram/domain/core/value_objects.dart';
import 'package:drosdogram/domain/objects/main_objects/order.dart';
import 'package:drosdogram/domain/objects/main_objects/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:drosdogram/domain/objects/main_objects/i_object_repository.dart';
import 'package:drosdogram/domain/objects/main_objects/object_failure.dart';

part 'order_form_bloc.freezed.dart';
part 'order_form_event.dart';
part 'order_form_state.dart';

@injectable
class OrderFormBloc extends Bloc<OrderFormEvent, OrderFormState> {
  OrderFormBloc(
    this._repository,
  ) : super(OrderFormState.initial());

  final IObjectRepository _repository;

  @override
  Stream<OrderFormState> mapEventToState(
    OrderFormEvent event,
  ) async* {
    yield* event.map(
      changeName: (e) async* {
        yield state.copyWith(
          order: state.order.copyWith(name: Name(e.nameStr)),
          failureOrOption: none(),
        );
      },
      changeImages: (e) async* {
        yield state.copyWith(
          order: state.order.copyWith(images: e.images),
          failureOrOption: none(),
        );
      },
      changeObjectId: (e) async* {
        yield state.copyWith(
          order: state.order.copyWith(objectId: e.objectId),
          failureOrOption: none(),
        );
      },
      changeIsHypotec: (e) async* {
        yield state.copyWith(
          order: state.order.copyWith(isHypothec: e.isHypotec),
          failureOrOption: none(),
        );
      },
      changePhone: (e) async* {
        yield state.copyWith(
          order: state.order.copyWith(phone: Phone(e.phoneStr)),
          failureOrOption: none(),
        );
      },
      changeRequest: (e) async* {
        yield state.copyWith(
          order: state.order.copyWith(request: Request(e.requestStr)),
          failureOrOption: none(),
        );
      },
      submit: (_) async* {
        yield state.copyWith(
          isSubmitting: true,
          failureOrOption: none(),
        );

        final isName = state.order.name.isValid();
        final isPhone = state.order.phone.isValid();
        final isRequest = state.order.request.isValid();

        if (isName && isPhone && isRequest) {
          final _res = await _repository.createOrder(order: state.order);

          yield _res.fold(
            (failure) => state.copyWith(
              isSubmitting: false,
              failureOrOption: some(left(failure)),
            ),
            (_) => state.copyWith(
              isSubmitting: false,
              failureOrOption: some(right(unit)),
            ),
          );
        }
        yield state.copyWith(
          showErrorMessage: true,
          isSubmitting: false,
          failureOrOption: none(),
        );
      },
    );
  }
}

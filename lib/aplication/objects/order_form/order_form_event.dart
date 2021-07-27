part of 'order_form_bloc.dart';

@freezed
class OrderFormEvent with _$OrderFormEvent {
  const factory OrderFormEvent.changeName(String nameStr) = _ChangeName;
  const factory OrderFormEvent.changePhone(String phoneStr) = _ChangePhone;
  const factory OrderFormEvent.changeRequest(String requestStr) =
      _ChangeRequest;
  const factory OrderFormEvent.changeObjectId(String objectId) =
      _ChangeObjectId;
  const factory OrderFormEvent.changeImages(List<String> images) =
      _ChangeImages;
  const factory OrderFormEvent.submit() = _Submit;
}

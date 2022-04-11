part of 'edit_address_bloc.dart';

@freezed
class EditAddressEvent with _$EditAddressEvent {
  const factory EditAddressEvent.init() = Init;
  const factory EditAddressEvent.apartmentChanged(String text) = ApartmentChanged;
  const factory EditAddressEvent.entranceChanged(String text) = EntranceChanged;
  const factory EditAddressEvent.floorChanged(String text) = FloorChanged;
  const factory EditAddressEvent.commentChanged(String text) = CommentChanged;
  const factory EditAddressEvent.saveClicked() = SaveClicked;
  const factory EditAddressEvent.deleteClicked() = DeleteClicked;
}
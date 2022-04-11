import 'address_item_entity.dart';
import 'network/address.dart';

class AddressEntity {
  AddressEntity({
    required this.registration,
    required this.residence,
    required this.matches,
    required this.items,
  });

  String registration;
  String residence;
  bool matches;
  List<AddressItemEntity> items;

  factory AddressEntity.fromResponse(Address response) => AddressEntity(
    registration: response.registration,
    residence: response.residence,
    matches: response.matches,
    items: _getAddressItems(response),
  );

  static List<AddressItemEntity> _getAddressItems(Address response) {
    List<AddressItemEntity> address = [];
    var data = response.items;
      data.forEach((item) {
        address.add(AddressItemEntity.fromResponse(item));
      });
      return address;
  }
}
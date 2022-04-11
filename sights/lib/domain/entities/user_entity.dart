import 'network/user.dart';

class UserEntity {
  UserEntity({
    required this.fullName,
    required this.first_name,
    required this.last_name ,
    required this.middle_name,
    required this.birthday,
    required this.gender,
  });

  String fullName;
  String first_name;
  String last_name;
  String middle_name;
  String birthday;
  String gender;

  factory UserEntity.fromResponse(User response) => UserEntity(
    fullName: response.fullName,
    first_name: response.first_name,
    last_name: response.last_name,
    middle_name: response.middle_name,
    birthday: response.birthday,
    gender: response.gender,
  );
}
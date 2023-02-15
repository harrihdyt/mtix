part of 'models.dart';

class UserModel extends Equatable {
  final String id;
  final String name;
  final int phone;
  final String password;

  UserModel(
      {required this.id,
      required this.name,
      required this.phone,
      required this.password});

  @override
  List<Object?> get props => [
        id,
        name,
        phone,
        password,
      ];
}

class UserProfileEntity {
  final int? id;
  final String? fullname;
  final String? phone;
  final int? gender;
  final DateTime? birthday;
  final String? avatar;
  final int? status;
  final String? address;
  final String? ward;
  final String? province;
  final String? email;

  UserProfileEntity({
    required this.id,
    required this.fullname,
    required this.phone,
    required this.gender,
    required this.birthday,
    required this.avatar,
    required this.status,
    required this.address,
    required this.ward,
    required this.province,
    required this.email,
  });
}

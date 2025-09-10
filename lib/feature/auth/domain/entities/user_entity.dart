class UserEntity {
  final int id;
  final String fullName;
  final String email;
  final String phone;
  final String? address;
  final String? avatar;
  final DateTime birthday;
  final int? gender;
  final bool? status;

  UserEntity({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phone,
    this.address,
    this.avatar,
    required this.birthday,
    this.gender,
    this.status,
  });

  UserEntity copyWith({
    int? id,
    String? fullName,
    String? email,
    String? phone,
    String? address,
    String? avatar,
    DateTime? birthday,
    int? gender,
    bool? status,})
  {
    return UserEntity(
      id: id ?? this.id, 
      fullName: fullName ?? this.fullName, 
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      avatar: avatar ?? this.avatar,
      birthday: birthday ?? this.birthday,
      gender: gender ?? this.gender,
      status: status ?? this.status
    );
  }
}
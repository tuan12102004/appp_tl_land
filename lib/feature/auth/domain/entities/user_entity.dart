class UserEntity {
  final int? id;
  final String? fullname;
  final String? phone;
  final int? gender;
  final DateTime? birthday;
  final String? avatar;
  final int? status;
  final String? address;
  final DateTime? createdAt;
  final String? ward;
  final String? province;

  UserEntity({
    required this.id,
    required this.fullname,
    required this.phone,
    required this.gender,
    required this.birthday,
    required this.avatar,
    required this.status,
    required this.address,
    required this.createdAt,
    required this.ward,
    required this.province,
  });

  UserEntity copyWith({
    int? id,
    String? fullname,
    String? phone,
    int? gender,
    DateTime? birthday,
    String? avatar,
    int? status,
    String? address,
    DateTime? createdAt,
    String? ward,
    String? province,
  }) {
    return UserEntity(
        id: id ?? this.id,
        fullname: fullname ?? this.fullname,
        phone: phone ?? this.phone,
        gender: gender ?? this.gender,
        birthday: birthday ?? this.birthday,
        avatar: avatar ?? this.avatar,
        status: status ?? this.status,
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        ward: ward ?? this.ward,
        province: province ?? this.province);
  }

  /// Convert entity -> Map để lưu SharedPreferences
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullname': fullname,
      'phone': phone,
      'gender': gender,
      'birthday': birthday?.toIso8601String(),
      'avatar': avatar,
      'status': status,
      'address': address,
      'createdAt': createdAt?.toIso8601String(),
      'ward': ward,
      'province': province,
    };
  }

  /// Convert Map -> entity khi lấy từ SharedPreferences
  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      id: map['id'] as int?,
      fullname: map['fullname'] as String?,
      phone: map['phone'] as String?,
      gender: map['gender'] as int?,
      birthday: map['birthday'] != null ? DateTime.parse(map['birthday'] as String) : null,
      avatar: map['avatar'] as String?,
      status: map['status'] as int?,
      address: map['address'] as String?,
      createdAt: map['createdAt'] != null ? DateTime.parse(map['createdAt'] as String) : null,
      ward: map['ward'] as String?,
      province: map['province'] as String?,
    );
  }
}

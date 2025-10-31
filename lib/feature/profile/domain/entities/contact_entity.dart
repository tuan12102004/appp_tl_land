class ContactEntity {
  final int id;
  final String? settingKey;
  final String? settingName;
  final String? value;
  final String? desc;
  final int? typeInput;
  final String? typeData;
  final int? group;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  ContactEntity({
    required this.id,
    required this.settingKey,
    required this.settingName,
    required this.value,
    required this.desc,
    required this.typeInput,
    required this.typeData,
    required this.group,
    required this.createdAt,
    required this.updatedAt,
  });
}

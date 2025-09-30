class ContactSignupEntity {
  final int id;
  final String settingKey;
  final String settingName;
  final String value;

  ContactSignupEntity({
    required this.id,
    required this.settingKey,
    required this.settingName,
    required this.value,
  });

  @override
  String toString() {
    return 'ContactSignupEntity('
        'id: $id, '
        'settingKey: $settingKey, '
        'settingName: $settingName, '
        'value: $value'
        ')';
  }
}

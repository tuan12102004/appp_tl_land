class NotificationEntity {
  final int id;
  final String? title;
  final String? shortMessage;
  final String? message;
  final String? avatar;
  final String? status;
  final DateTime createdAt;

  NotificationEntity({
    required this.id,
    required this.title,
    required this.shortMessage,
    required this.message,
    required this.avatar,
    required this.status,
    required this.createdAt,
  });

  NotificationEntity copyWith({
    int? id,
    String? title,
    String? shortMessage,
    String? message,
    String? avatar,
    String? status,
    DateTime? createdAt,
  }) {
    return NotificationEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      shortMessage: shortMessage ?? this.shortMessage,
      message: message ?? this.message,
      avatar: avatar ?? this.avatar,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

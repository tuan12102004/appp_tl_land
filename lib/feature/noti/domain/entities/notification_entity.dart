class NotificationEntity {
  final int id;
  final String? title;
  final String? message;
  final int? status;
  final DateTime? createdAt;

  NotificationEntity({
    required this.id,
    required this.title,
    required this.message,
    required this.status,
    required this.createdAt,
  });

  NotificationEntity copyWith({
    int? id,
    String? title,
    String? message,
    int? status,
    DateTime? createdAt,
  }) {
    return NotificationEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      message: message ?? this.message,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

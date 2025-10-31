class FaqEntity {
  final int id; 
  final String title;
  final String content;
  final String? type;

  FaqEntity({
    required this.id,
    required this.title,
    required this.content,
    this.type,
  });
}

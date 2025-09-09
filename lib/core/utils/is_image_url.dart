bool isImageUrl(String url) {
  final imageRegex = RegExp(
    r'\.(jpe?g|png|gif|webp|bmp|tiff?)$',
    caseSensitive: false,
  );
  return imageRegex.hasMatch(url);
}

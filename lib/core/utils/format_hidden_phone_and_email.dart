String formatHiddenEmail(String email) {
  int hiddenQuantity = 4;
  final parts = email.split('@');
  if (parts.length != 2) return email;

  final localPart = parts[0];
  final domainPart = parts[1];

  if (localPart.length <= hiddenQuantity) return email;

  // Lấy phần ký tự cần hiển thị (từ vị trí thứ 4 đến hết)
  final visiblePart = localPart.substring(hiddenQuantity);

  final hiddenPart = '*' * hiddenQuantity;

  // return '$visiblePart$hiddenPart@$domainPart'; // ẩn ký tự cuối
  return '$hiddenPart$visiblePart@$domainPart'; // ẩn ký tự đầu
}

String formatHiddenPhoneNumber(String phone) {
  if (phone.length <= 4) return phone;
  final visiblePart = phone.substring(4);
  // return '****$visiblePart'; // ẩn ký tự đầu
  return '$visiblePart****'; // ẩn ký tự cuối
}

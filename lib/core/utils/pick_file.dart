import 'dart:io';
import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:app_tl_land_3212/core/core_module.dart';

Future<File?> pickFile(BuildContext context) async {
  try {
    final List<String> extensions = [
      'doc',
      'docx',
      'pdf',
      'jpg',
      'jpeg',
      'png',
      'gif',
      'bmp',
      'webp',
    ];

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: extensions,
    );
    if (result != null) {
      File file = File(result.files.single.path!);
      return file;
    } else {
      return null;
    }
  } catch (e) {
    if (context.mounted) {
      showAppSnackbar(
        context,
        content: "Chọn tệp thất bại",
        snackbarType: SnackbarType.error,
      );
    }
    return null;
  }
}

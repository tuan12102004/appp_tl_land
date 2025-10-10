import 'dart:io';
import 'dart:typed_data';

import 'package:app_tl_land_3212/core/utils/show_app_dialog.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

Future<Uint8List?> pickImage(
  BuildContext context, {
  ImageSource imageSource = ImageSource.gallery,
}) async {
  try {
    late PermissionStatus result;
    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt <= 32) {
        result = await Permission.storage.request();
      } else {
        result = await Permission.photos.request();
      }
    } else {
      result = await Permission.photos.request();
    }

    if (context.mounted) {
      switch (result) {
        case PermissionStatus.denied:
        case PermissionStatus.restricted:
        case PermissionStatus.limited:
        case PermissionStatus.permanentlyDenied:
        case PermissionStatus.provisional:
          showAppDialog(
            context,
            title: 'Thông báo',
            content: 'Bạn cần cấp quyền để truy cập thư viện',
            onConfirm: () async => await openAppSettings(),
          );
        case PermissionStatus.granted:
          final ImagePicker picker = ImagePicker();
          XFile? pickedFile;

          if (imageSource == ImageSource.gallery) {
            // Pick an image.
            pickedFile = await picker.pickImage(source: ImageSource.gallery);
          } else {
            // Capture a photo.
            pickedFile = await picker.pickImage(source: ImageSource.camera);
          }
          return await pickedFile?.readAsBytes();
      }
    }
    return null;
  } catch (e) {
    return null;
  }
}
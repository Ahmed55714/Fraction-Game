import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../my_app.dart';

class PermissionsHelper {
  static Future<bool> requestGalleryPermissionIfNeeded() async {
    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt >= 32) {
        final PermissionStatus galleryStatus =
            await Permission.photos.request();
        if (galleryStatus != PermissionStatus.granted) {
          await Permission.photos.request();
          final PermissionStatus updatedStatus = await Permission.photos.status;
          if (updatedStatus != PermissionStatus.granted) {
            _showPermissionDeniedSnackbar('Gallery');
            return false;
          }
        }
      }
    }
    return true;
  }

  static void _showPermissionDeniedSnackbar(String permissionName) {
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
      SnackBar(
        content: Text('Permission for $permissionName was denied.'),
      ),
    );
  }

  static Future<void> showPermissionRationaleDialog(
      String permissionName) async {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Permission Required'),
          content: Text(
              'The app needs $permissionName permission to function properly. Please enable it in the app settings.'),
          actions: <Widget>[
            TextButton(
              child: Text('Open Settings'),
              onPressed: () {
                Navigator.of(context).pop();
                openAppSettings();
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

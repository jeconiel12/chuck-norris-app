import 'dart:io';

import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

mixin ShareScreenshot {
  final ScreenshotController _screenshotController = ScreenshotController();

  Future<void> call(Widget widget) async {
    const fileName = 'screenshot.png';
    final directory = (await getApplicationDocumentsDirectory()).path;
    final file = await File('$directory/$fileName').create();
    final capturedWidget =
        await _screenshotController.captureFromWidget(widget);
    file.writeAsBytesSync(capturedWidget);
    // ignore: deprecated_member_use
    await Share.shareFiles([file.path]);
    await file.delete();
  }
}

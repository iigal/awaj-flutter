import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:pocketbase_server_flutter/pocketbase_server_flutter.dart';

Future<void> restoreBackup() async {
  // Path to backup folder
  final Directory backupDir = Directory('/storage/emulated/0/awajbe');
  if (!await backupDir.exists()) {
    print("Backup directory doesn't exist.");
    return;
  }

  // Get application-specific external directory
  final Directory? appDir = await getExternalStorageDirectory();
  if (appDir == null) {
    print("App external directory is null.");
    return;
  }

  // Copy each file/folder from backup to app directory
  await copyDirectory(backupDir, appDir);

  print("Backup restored successfully.");
}

Future<void> copyDirectory(Directory source, Directory destination) async {
  if (!await destination.exists()) {
    await destination.create(recursive: true);
  }

  await for (var entity in source.list(recursive: true)) {
    final String newPath = p.join(destination.path, p.relative(entity.path, from: source.path));

    if (entity is File) {
      await File(newPath).create(recursive: true);
      await entity.copy(newPath);
    } else if (entity is Directory) {
      await Directory(newPath).create(recursive: true);
    }
  }
}

late PocketBase pocketBaseDB;

late String mobilePocketbase;

Future<void> setupPocketBase() async {
  if (kIsWeb) {
    mobilePocketbase = '';
    pocketBaseDB = PocketBase('https://five-baths-lick.loca.lt');
    return;
  }

  await Permission.storage.request();

  mobilePocketbase = await PocketbaseServerFlutter.localIpAddress ?? '';

  if (mobilePocketbase.isNotEmpty && await PocketbaseServerFlutter.isRunning == false) {
    try {
      await PocketbaseServerFlutter.start(
        superUserEmail: 'atishshakya@gmail.com',
        superUserPassword: 'shakya@123',
        hostName: mobilePocketbase,
        port: '8090',
        enablePocketbaseApiLogs: false,
      );
      print('Started PocketBase at: $mobilePocketbase');
    } catch (err) {
      print('PocketBase error: $err');
    }
  }
  pocketBaseDB = PocketBase(mobilePocketbase != "" ? "http://$mobilePocketbase:8090" : 'https://five-baths-lick.loca.lt');
}

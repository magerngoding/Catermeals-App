import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:flutter/foundation.dart';
import 'package:cater_meals/firebase_options.dart';
import 'package:path_provider/path_provider.dart';
import 'package:cater_meals/service/main_storage_service/main_storage.dart';

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
  }
  mainStorage = await Hive.openBox('mainStorage');

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flux/app.dart';
import 'package:flux/services/app_service.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeServices();
  runApp(App());
}

void initializeServices() {
  Get.put(AppService());
}

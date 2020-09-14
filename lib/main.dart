import 'package:flutter/material.dart';
import 'package:othapp/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io' show Platform;

bool USE_FIREBASE_EMULATOR = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if (USE_FIREBASE_EMULATOR) {
    String host = Platform.isAndroid ? '10.0.2.2:8080' : 'localhost:8080';

    FirebaseFirestore.instance.settings = Settings(
      host: host,
      sslEnabled: false,
      persistenceEnabled: false
    );
  }
  runApp(App());
}

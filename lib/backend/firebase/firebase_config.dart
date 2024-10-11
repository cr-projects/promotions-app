import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDMG6U-GBJsDdRvWe3cHeOzzQd1R9HefBI",
            authDomain: "promotions-u5pdml.firebaseapp.com",
            projectId: "promotions-u5pdml",
            storageBucket: "promotions-u5pdml.appspot.com",
            messagingSenderId: "212330941866",
            appId: "1:212330941866:web:d3b5728a66016252b9afd3"));
  } else {
    await Firebase.initializeApp();
  }
}

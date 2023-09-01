import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA0n0zQvzq4WF0bO1vGL-8gSmdL_YgnOrk",
            authDomain: "medical-booking-app-95620.firebaseapp.com",
            projectId: "medical-booking-app-95620",
            storageBucket: "medical-booking-app-95620.appspot.com",
            messagingSenderId: "1009997611456",
            appId: "1:1009997611456:web:2ca1a001e783b3b8994825"));
  } else {
    await Firebase.initializeApp();
  }
}

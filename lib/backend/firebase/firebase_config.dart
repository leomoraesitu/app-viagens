import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBrrL6KWUXflvf2bJLSi9EJ0DvJ3QF0FJ8",
            authDomain: "appviagens2-92cbf.firebaseapp.com",
            projectId: "appviagens2-92cbf",
            storageBucket: "appviagens2-92cbf.firebasestorage.app",
            messagingSenderId: "651722974682",
            appId: "1:651722974682:web:400718324e9d43b8444ce3",
            measurementId: "G-ER1T0BGYEM"));
  } else {
    await Firebase.initializeApp();
  }
}

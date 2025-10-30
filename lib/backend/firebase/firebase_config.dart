import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDiXIKGS4QM_3IWOeXRbvwMc1B4lXds3yc",
            authDomain: "appviagens2-92cbf.firebaseapp.com",
            projectId: "appviagens2-92cbf",
            storageBucket: "appviagens2-92cbf.firebasestorage.app",
            messagingSenderId: "651722974682",
            appId: "1:651722974682:web:09a3ec1884e776eb444ce3",
            measurementId: "G-W4FB7T3HRW"));
  } else {
    await Firebase.initializeApp();
  }
}

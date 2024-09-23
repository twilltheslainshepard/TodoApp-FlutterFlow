import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDefUSr0OBjH8U9MvUAyiCIR98VgXO6FXA",
            authDomain: "todo-4e6p7m.firebaseapp.com",
            projectId: "todo-4e6p7m",
            storageBucket: "todo-4e6p7m.appspot.com",
            messagingSenderId: "681871253889",
            appId: "1:681871253889:web:c9fae6d454fd69e5968880"));
  } else {
    await Firebase.initializeApp();
  }
}

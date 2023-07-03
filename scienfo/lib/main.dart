import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scienfo/models/current_image_index.dart';
import 'package:scienfo/scienfo_content_page1.dart';
import 'package:scienfo/scienfo_register_page.dart';
import 'gradient_background.dart'; // Your GradientBackground class

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.transparent, // sets the color of status bar to transparent
  statusBarIconBrightness: Brightness.dark, // sets the color of status bar icons to dark
));


}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CurrentImageIndex(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthenticationService(),
        ),
      ],
      child: MaterialApp(
        title: 'SCIENFO',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
        ),
        home: GradientBackground(
          // Your GradientBackground widget
          child: Consumer<AuthenticationService>(
            builder: (context, authService, _) {
              if (authService.user == null) {
                print('User is null. Navigating to ScienfoRegisterPage');
                return ScienfoRegisterPage();
              } else {
                print('User is logged in. Navigating to HomePage');
                return ScienfoContentPage1(); // your homepage widget when user is logged in
              }
            },
          ),
        ),
      ),
    );
  }
}

class AuthenticationService extends ChangeNotifier {
  User? _user;
  String? _userType;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance; // instance of Firestore

  AuthenticationService() {
    _auth.authStateChanges().listen((User? user) async {
      print('Auth state changed. User is now: $user');
      _user = user;

      if (user != null) {
        _userType =
            await _getUserType(user.uid); // fetch userType from Firestore
      } else {
        _userType = null;
      }

      notifyListeners();
    });
  }

  Stream<String?> get userTypeStream {
    if (_user == null) {
      // _user is null, so we return a Stream that emits null once and then completes
      return Stream.value(null);
    } else {
      // _user is not null, so we can safely access its uid
      return _firestore
          .collection('users')
          .doc(_user!.uid)
          .snapshots()
          .map((snapshot) {
        return snapshot.get('userType') as String?;
      });
    }
  }

  User? get user => _user;
  String? get userType => _userType;

  Future<String?> _getUserType(String uid) async {
    // Retrieve the document from Firestore
    DocumentSnapshot doc = await _firestore.collection('users').doc(uid).get();

    if (doc.exists) {
      var userType = doc.get('userType');
      if (userType != null && userType is String) {
        return userType;
      }
    }
    return null;
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      _user = null; // set user to null after signing out
      _userType = null; // set userType to null after signing out
      print('User signed out.');
      notifyListeners(); // notify listeners about user sign out
    } catch (e) {
      print('Error signing out: $e');
    }
  }
}

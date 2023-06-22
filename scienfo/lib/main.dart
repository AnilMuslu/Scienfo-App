import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scienfo/models/current_image_index.dart';
import 'package:scienfo/scienfo_content_page1.dart';
import 'package:scienfo/scienfo_register_page.dart'; // assuming this is your homepage when user is logged in

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
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
        home: Consumer<AuthenticationService>(
          builder: (context, authService, _) {
            if (authService.user == null) {
              print('User is null. Navigating to ScienfoRegisterPage');
              return ScienfoRegisterPage();
            } else {
              print('User is logged in. Navigating to HomePage');
              return ScienfoContentPage1();  // your homepage widget when user is logged in
            }
          },
        ),
      ),
    );
  }
}

class AuthenticationService extends ChangeNotifier {
  User? _user;
  String? _userType;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;  // instance of Firestore

  AuthenticationService() {
    _auth.authStateChanges().listen((User? user) async {
      print('Auth state changed. User is now: $user');
      _user = user;
      
      if (user != null) {
        _userType = await _getUserType(user.uid);  // fetch userType from Firestore
      } else {
        _userType = null;
      }

      notifyListeners();
    });
  }

  User? get user => _user;
  String? get userType => _userType;

  Future<String?> _getUserType(String uid) async {
    // Retrieve the document from Firestore
    DocumentSnapshot doc = await _firestore.collection('users').doc(uid).get();
    return doc.exists ? doc.get('userType') as String : null;
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      _user = null;  // set user to null after signing out
      _userType = null; // set userType to null after signing out
      print('User signed out.');
      notifyListeners(); // notify listeners about user sign out
    } catch (e) {
      print('Error signing out: $e');
    }
  }
}

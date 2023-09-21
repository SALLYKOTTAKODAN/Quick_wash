import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quick_wash/SplashScreen.dart';

String? CurrentUserId='';
var CurrentuserEmail='';
var CurrentuserName;
var CurrentuserPhoto;
var h;
var w;
Map currentUserData={};
getUser() {
  FirebaseFirestore.instance.collection("user").doc(CurrentUserId)
      .snapshots()
      .listen((doc) {
    currentUserData = doc.data()!;
  });
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyappState();
}
class _MyappState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     h=MediaQuery.of(context).size.height;
     w=MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(brightness: Brightness.light),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../service/firebase_service.dart';

@module
abstract class AppModule {
  @preResolve
  Future<FirebaseService> get fireService => FirebaseService.init();

  @injectable
  FirebaseFirestore get store => FirebaseFirestore.instance;

  @injectable
  FirebaseAuth get auth => FirebaseAuth.instance;
}

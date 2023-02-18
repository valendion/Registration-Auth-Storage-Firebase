import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:test_revamph/models/failure_model.dart';
import 'package:test_revamph/models/user_registration.dart';

class FirebaseFirestoreServices {
  late FirebaseFirestore dbFirestore;

  String _nameCollection = '';
  set nameCollection(String name) => _nameCollection = name;
  String get nameCollection => _nameCollection = _nameCollection;

  FirebaseFirestoreServices() {
    dbFirestore = FirebaseFirestore.instance;
  }

  Future<Either<String, FailureModel>> addDataFirestore(
      UserRegistration userRegistration) async {
    try {
      CollectionReference refUser = dbFirestore.collection(nameCollection);
      await refUser
          .add(userRegistration.toJson())
          .then((value) => debugPrint('User Add'));
      return const Left('User add');
    } catch (e) {
      return Right(FailureModel('User failed add'));
    }
  }
}

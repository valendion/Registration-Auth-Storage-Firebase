import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_revamph/models/failure_model.dart';

class FirebaseAuthServices {
  static FirebaseAuth auth = FirebaseAuth.instance;

  static Future<Either<UserCredential, FailureModel>> registEmailPass(
      String email, String password) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return Left(userCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Right(FailureModel('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        return Right(
            FailureModel('The account already exists for that email.'));
      } else {
        return Right(FailureModel(e.toString()));
      }
    } catch (e) {
      return Right(FailureModel(e.toString()));
    }
  }

  static Future<Either<UserCredential, FailureModel>> signInEmailPass(
      String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return Left(userCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Right(FailureModel(('No user found for that email.')));
      } else if (e.code == 'wrong-password') {
        return Right(FailureModel(('Wrong password provided for that user.')));
      } else {
        return Right(FailureModel(e.toString()));
      }
    } catch (e) {
      return Right(FailureModel(e.toString()));
    }
  }
}

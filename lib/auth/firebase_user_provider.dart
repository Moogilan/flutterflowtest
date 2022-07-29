import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SsessmentsTestFirebaseUser {
  SsessmentsTestFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SsessmentsTestFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SsessmentsTestFirebaseUser> ssessmentsTestFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SsessmentsTestFirebaseUser>(
            (user) => currentUser = SsessmentsTestFirebaseUser(user));

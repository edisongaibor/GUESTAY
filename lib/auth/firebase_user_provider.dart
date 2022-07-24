import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GuestayFirebaseUser {
  GuestayFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

GuestayFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GuestayFirebaseUser> guestayFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<GuestayFirebaseUser>(
        (user) => currentUser = GuestayFirebaseUser(user));

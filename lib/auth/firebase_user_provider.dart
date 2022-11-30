import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GroupFinderProjectFirebaseUser {
  GroupFinderProjectFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

GroupFinderProjectFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GroupFinderProjectFirebaseUser> groupFinderProjectFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GroupFinderProjectFirebaseUser>(
      (user) {
        currentUser = GroupFinderProjectFirebaseUser(user);
        return currentUser!;
      },
    );

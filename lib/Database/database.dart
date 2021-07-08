import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth_ui/firebase_auth_ui.dart';

Future<void> addUser(unit1Quiz) async {
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  // if ()
  // Call the user's CollectionReference to add a new user
  // FirebaseUserMetadata metadata = auth.getCurrentUser().getMetadata();
// if (metadata.getCreationTimestamp() == metadata.getLastSignInTimestamp()) {
    // The user is new, show them a fancy intro screen!
// }

  usercollection.doc(uid)
      .set({
        "Unit1Quiz": unit1Quiz,
      },
      SetOptions(merge:true)
      )
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  return;
}

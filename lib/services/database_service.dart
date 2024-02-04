import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});
// reference for collections
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("user");
  final CollectionReference groupCollection =
      FirebaseFirestore.instance.collection("groups");

  //saving user data
  Future savingUserData(String fullName, String email) async {
    return await userCollection.doc(uid).set({
      "fullName": fullName,
      "email": email,
      "groups": [],
      "profilePic": "",
      "uid": uid,
    });
  }

  //  getting user data
  Future gettingUserData(String email) async {
    QuerySnapshot snapshot =
        await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }

  // for getting user groups
  getUserGroups() async {
    return userCollection.doc(uid).snapshots();
  }

  // creating group
  Future createGroup(String userName, String id, String groupName) async {
    DocumentReference documentReference = await groupCollection.add({
      "groupName": groupName,
      "groupIcon": "",
      "admin": "${id}_$userName",
      "members": [],
      "groupId": "",
      "recentMessage": "",
      "recentMessageSender": "",
    });
    // updating groupid and memberes
    await documentReference.update({
      "members": FieldValue.arrayUnion(["${uid}_$userName"]),
      "groupId": documentReference.id,
    });

    DocumentReference userDocumentReference = await userCollection.doc(uid);
    return await userDocumentReference.update({
      "groups": FieldValue.arrayUnion(["${documentReference.id}_$groupName"])
    });
  }
}

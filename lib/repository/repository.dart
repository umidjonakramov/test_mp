import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/friend_model.dart';


class AppRepository {
  final collectionreference = FirebaseFirestore.instance.collection('Users');
  List<Autogenerated> list = [];

  Future<List<Autogenerated>> getFriendLocation() async {
    List<Autogenerated> users = [];

    try {
      QuerySnapshot snapshot = await collectionreference.get();
      users = snapshot.docs.map((doc) {
        return Autogenerated.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();

      print(users[0].name);
      return users;
    } catch (e) {
      print("Error getting all users: $e");
      return [];
    }
  }

  void getAllFriends() async {
    var resualt=await getFriendLocation();
    list=resualt;
  }

}
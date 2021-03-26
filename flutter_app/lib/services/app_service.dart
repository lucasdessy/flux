import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class AppService extends GetxService {
  final _firebase = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getTesteDocuments() {
    return _firebase.collection('teste').snapshots();
  }
}

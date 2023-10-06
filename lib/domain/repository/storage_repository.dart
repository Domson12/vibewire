import 'package:firebase_storage/firebase_storage.dart';

abstract class StorageRepository {
 Future<Reference> getProfileImageReference(String childName, String uid);
}

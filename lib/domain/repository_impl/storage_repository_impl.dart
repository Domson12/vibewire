import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import '../repository/storage_repository.dart';

@lazySingleton
class StorageRepositoryImpl implements StorageRepository {
  StorageRepositoryImpl(this._storage);

  final FirebaseStorage _storage;

  @override
  Future<Reference> getProfileImageReference(
      String childName, String uid) async {
    return _storage.ref().child(childName).child(uid);
  }
}

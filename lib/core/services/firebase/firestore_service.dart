import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_shedule/features/shedule/domain/entities/schedule_entity.dart';

abstract class StorageService {
  Stream<List<EventEntity>> getEvents();
  Future<void> addEvent(EventEntity event);
  Future<void> updateEvent(EventEntity event);
  Future<void> deleteEvent(String id);
}

class FirestoreService extends StorageService {
  FirestoreService();

  final CollectionReference  _events = FirebaseFirestore.instance.collection('events');
  
  @override
  Future<void> addEvent(EventEntity event) async {
    await _events.add(event.toMap());
  }
  
  @override
  Future<void> deleteEvent(String id) async {
    await _events.doc(id).delete();
  }
  
  @override
  Stream<List<EventEntity>> getEvents() {
    return _events.snapshots().map((snapshot) => snapshot.docs.map((doc) => EventEntity.fromDocument(doc)).toList());
  }
  
  @override
  Future<void> updateEvent(EventEntity event) async {
    await _events.doc(event.id).update(event.toMap());
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';

abstract class FirestoreService {
  Stream<List<EventEntity>> getEvents();
  Future<EventEntity> addEvent(EventEntity event);
  Future<void> updateEvent(EventEntity event);
  Future<void> deleteEvent(String id);
  Stream<List<EventEntity>> getEventsByDate(DateTime date);
}

class FirestoreServiceImpl extends FirestoreService {
  FirestoreServiceImpl();

  final CollectionReference _eventsCollection =
      FirebaseFirestore.instance.collection('events');

  @override
  Future<EventEntity> addEvent(EventEntity event) async {
    try {
      final DocumentReference docRef = await _eventsCollection.add(event.toMap());
      final newEvent = event.copyWith(id: docRef.id);
      return newEvent;
    } catch (e, stackTrace) {
      print('Error adding event: $e');
      print('Stack trace: $stackTrace');
      throw Exception('Failed to add event');
    }
  }

  @override
  Future<void> updateEvent(EventEntity event) async {
    if (event.id == null) {
      throw Exception('Event ID is null. Cannot update event without ID.');
    }
    try {
      await _eventsCollection.doc(event.id).update(event.toMap());
    } catch (e, stackTrace) {
      print('Error updating event: $e');
      print('Stack trace: $stackTrace');
      throw Exception('Failed to update event');
    }
  }

  @override
  Future<void> deleteEvent(String id) async {
    try {
      await _eventsCollection.doc(id).delete();
      print('Event deleted with ID: $id');
    } catch (e, stackTrace) {
      print('Error deleting event: $e');
      print('Stack trace: $stackTrace');
      throw Exception('Failed to delete event');
    }
  }

  @override
  Stream<List<EventEntity>> getEvents() {
    return _eventsCollection.snapshots().map((snapshot) {
      return snapshot.docs
          .map(
            (doc) => EventEntity.fromDocument(doc),
          )
          .toList();
    });
  }

  @override
  Stream<List<EventEntity>> getEventsByDate(DateTime date) {
    final eventDate = DateTime(date.year, date.month, date.day);
    return _eventsCollection
        .where('eventDate', isEqualTo: eventDate)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map(
              (doc) => EventEntity.fromDocument(doc),
            )
            .toList());
  }
}

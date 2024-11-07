import 'package:equatable/equatable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EventEntity extends Equatable {
  final String? id;
  final String? name;
  final String? description;
  final String? img;
  final String? date;
  final String? time;
  final bool? isCompleted;

  const EventEntity({
    this.id,
    this.name,
    this.description,
    this.img,
    this.date,
    this.time,
    this.isCompleted,
  });

  factory EventEntity.fromDocument(DocumentSnapshot doc) {
    return EventEntity(
      id: doc.id,
      name: doc['name'],
      description: doc['description'],
      img: doc['img'],
      date: doc['date'],
      time: doc['time'],
      isCompleted: doc['isCompleted'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'img': img,
      'date': date,
      'time': time,
      'isCompleted': isCompleted,
    };
  }

  @override
  List<Object?> get props =>
      [id, name, description, img, date, time, isCompleted];
}

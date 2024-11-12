import 'package:equatable/equatable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EventEntity extends Equatable {
  final String? id;
  final String? name;
  final String? description;
  final String? img;
  final DateTime? startDate;
  final DateTime? endDate;
  final bool? isCompleted;

  const EventEntity({
    this.id,
    this.name,
    this.description,
    this.img,
    this.startDate,
    this.endDate,
    this.isCompleted,
  });

  factory EventEntity.fromDocument(DocumentSnapshot doc) {
    return EventEntity(
      id: doc.id,
      name: doc['name'],
      description: doc['description'],
      img: doc['img'],
      startDate: doc['startDate'],
      endDate: doc['endDate'],
      isCompleted: doc['isCompleted'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'img': img,
      'startDate': startDate,
      'endDate': endDate,
      'isCompleted': isCompleted,
    };
  }

  EventEntity copyWith({
    String? id,
    String? name,
    String? description,
    String? img,
    DateTime? dateTime,
    DateTime? startDate,
    DateTime? endDate,
    bool? isCompleted,
  }) {
    return EventEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      img: img ?? this.img,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        img,
        startDate,
        endDate,
        isCompleted,
      ];
}

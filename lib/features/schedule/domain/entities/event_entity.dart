import 'package:equatable/equatable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EventEntity extends Equatable {
  final String id;
  final String title;
  final String? description;
  final String? img;
  final DateTime startDate;
  final DateTime endDate;
  final bool isCompleted;

  const EventEntity({
    required this.id,
    required this.title,
    this.description,
    this.img,
    required this.startDate,
    required this.endDate,
    required this.isCompleted,
  });

  factory EventEntity.fromDocument(DocumentSnapshot doc) {
    return EventEntity(
      id: doc.id,
      title: doc['title'],
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
      'title': title,
      'description': description,
      'img': img,
      'startDate': startDate,
      'endDate': endDate,
      'isCompleted': isCompleted,
    };
  }

  EventEntity copyWith({
    String? id,
    String? title,
    String? description,
    String? img,
    DateTime? dateTime,
    DateTime? startDate,
    DateTime? endDate,
    bool? isCompleted,
  }) {
    return EventEntity(
      id: id ?? this.id,
      title: title ?? this.title,
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
        title,
        description,
        img,
        startDate,
        endDate,
        isCompleted,
      ];
}

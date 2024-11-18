import 'package:equatable/equatable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EventEntity extends Equatable {
  final String? id;
  final String title;
  final String? description;
  final String? img;
  final DateTime eventDate;
  final TimeOfDay eventTime;
  final bool isCompleted;

  const EventEntity({
    this.id,
    required this.title,
    this.description,
    this.img,
    required this.eventDate,
    required this.eventTime,
    this.isCompleted = false,
  });

  factory EventEntity.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return EventEntity(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      img: data['img'] ?? '',
      eventDate: (data['eventDate'] as Timestamp).toDate(),
      eventTime:
          TimeOfDay.fromDateTime((data['eventDate'] as Timestamp).toDate()),
      isCompleted: data['isCompleted'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'img': img,
      'eventDate': Timestamp.fromDate(eventDate),
      'eventTime': eventTime,
      'isCompleted': isCompleted,
    };
  }

  EventEntity copyWith({
    String? id,
    String? title,
    String? description,
    String? img,
    DateTime? eventDate,
    TimeOfDay? eventTime,
    bool? isCompleted,
  }) {
    return EventEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      img: img ?? this.img,
      eventDate: eventDate ?? this.eventDate,
      eventTime: eventTime ?? this.eventTime,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        img,
        eventDate,
        eventTime,
        isCompleted,
      ];
}

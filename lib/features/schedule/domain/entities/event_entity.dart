import 'package:equatable/equatable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_shedule/core/utils/helpers.dart';

class EventEntity extends Equatable {
  final String? id;
  final String title;
  final String? description;
  final DateTime eventDate;
  final TimeOfDay eventTime;
  final bool isCompleted;

  const EventEntity({
    this.id,
    required this.title,
    this.description,
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
      eventDate: data['eventDate'].toDate(),
      eventTime: TimeHelper.timeOfDayFromString(data['eventTime'] as String),
      isCompleted: data['isCompleted'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'eventDate': eventDate,
      'eventTime': TimeHelper.timeOfDayToString(eventTime),
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
      eventDate: eventDate ?? this.eventDate,
      eventTime: eventTime ?? this.eventTime,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  String get getTimeOnString => TimeHelper.timeOfDayToString(eventTime);

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        eventDate,
        eventTime,
        isCompleted,
      ];
}

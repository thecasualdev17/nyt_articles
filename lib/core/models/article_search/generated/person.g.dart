// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      json['firstname'] as String?,
      json['middlename'] as String?,
      json['lastname'] as String?,
      json['qualifier'] as String?,
      json['title'] as String?,
      json['role'] as String?,
      json['organization'] as String?,
      json['rank'] as int?,
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'firstname': instance.firstname,
      'middlename': instance.middlename,
      'lastname': instance.lastname,
      'qualifier': instance.qualifier,
      'title': instance.title,
      'role': instance.role,
      'organization': instance.organization,
      'rank': instance.rank,
    };

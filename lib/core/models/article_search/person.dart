import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generated/person.g.dart';

@JsonSerializable()
class Person extends Equatable {

  final String? firstname, middlename, lastname, qualifier, title, role, organization;
  final int? rank;

  const Person(this.firstname, this.middlename, this.lastname, this.qualifier, this.title, this.role, this.organization, this.rank);

  @override
  List<Object?> get props => [];

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Keyword extends Equatable{
  final String? name, value, major;
  final int? rank;

  const Keyword(this.name, this.value, this.major, this.rank);

  @override
  List<Object?> get props => [
    name, value, major, rank
  ];


}
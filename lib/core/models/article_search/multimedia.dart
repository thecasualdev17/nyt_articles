import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generated/multimedia.g.dart';

@JsonSerializable()
class Multimedia extends Equatable{
  final String? subtype, caption, credit, type, url;
  @JsonKey(name: 'crop_name')
  final String? cropName;
  final int? rank, height, width;

  const Multimedia(this.subtype, this.caption, this.credit, this.type, this.url, this.cropName, this.rank, this.height, this.width);

  @override
  List<Object?> get props => [
    subtype, caption, credit, type, url, cropName, rank, height, width
  ];

  factory Multimedia.fromJson(Map<String, dynamic> json) => _$MultimediaFromJson(json);
  Map<String, dynamic> toJson() => _$MultimediaToJson(this);
}
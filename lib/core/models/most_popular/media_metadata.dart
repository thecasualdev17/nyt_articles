import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class MediaMetadata extends Equatable{
  final String? url, format;
  final int? height, width;

  const MediaMetadata(this.url, this.format, this.height, this.width);

  @override
  List<Object?> get props => [
    url, format, height, width
  ];

}
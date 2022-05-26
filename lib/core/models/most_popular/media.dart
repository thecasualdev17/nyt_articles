import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nyt_articles/core/models/most_popular/media_metadata.dart';

part 'generated/media.g.dart';

@JsonSerializable()
class Media extends Equatable{

  final String? type, subtype, caption, copyright;
  @JsonKey(name: 'media-metadata')
  final List<MediaMetadata>? mediaMetadata;

  const Media(this.type, this.subtype, this.caption, this.copyright, this.mediaMetadata);

  @override
  List<Object?> get props => [
    type, subtype, caption, copyright, mediaMetadata
  ];

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);

}
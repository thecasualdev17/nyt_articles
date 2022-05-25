import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nyt_articles/core/models/most_popular/media_metadata.dart';

part 'generated/media.g.dart';

@JsonSerializable()
class Media extends Equatable{

  final String? type, subtype, caption, copyright;
  @JsonKey(name: 'approved_for_syndication')
  final bool? approvedForSyndication;
  final List<MediaMetadata>? mediaMetadata;

  const Media(this.type, this.subtype, this.caption, this.copyright, this.approvedForSyndication, this.mediaMetadata);

  @override
  List<Object?> get props => [
    type, subtype, caption, copyright, approvedForSyndication, mediaMetadata
  ];

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);

}
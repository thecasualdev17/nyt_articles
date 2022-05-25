import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Headline extends Equatable{

  final String? main, kicker, name, seo, sub;
  @JsonKey(name: 'content_kicker')
  final String? contentKicker;
  @JsonKey(name: 'print_headline')
  final String? printHeadline;

  const Headline(this.main, this.kicker, this.name, this.seo, this.sub, this.contentKicker, this.printHeadline);

  @override
  List<Object?> get props => [
    main, kicker, name, seo, sub, contentKicker, printHeadline
  ];

}
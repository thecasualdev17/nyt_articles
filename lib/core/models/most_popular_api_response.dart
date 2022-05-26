import 'package:json_annotation/json_annotation.dart';
import 'most_popular/most_popular.dart';

part 'generated/most_popular_api_response.g.dart';

@JsonSerializable()
class MostPopularApiResponse{
  final String? status;
  final String? copyright;
  @JsonKey(name: 'num_results')
  final int? numResults;
  final List<MostPopular>? results;

  const MostPopularApiResponse(this.status, this.copyright, this.numResults, this.results);

  factory MostPopularApiResponse.fromJson(Map<String, dynamic> json) => _$MostPopularApiResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MostPopularApiResponseToJson(this);
}
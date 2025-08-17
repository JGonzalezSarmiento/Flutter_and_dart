class SuperheroDetailResponse {
  final String id;
  final String name;
  final String url;

  SuperheroDetailResponse({
    required this.id,
    required this.name,
    required this.url,
  });

  factory SuperheroDetailResponse.fromJson(Map<String, dynamic> json) {
    return SuperheroDetailResponse(
      id: json["id"],
      name: json["name"],
      url: json["image"]["url"],
    );
  }
}

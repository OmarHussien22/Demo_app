class AlbumsModel {
  int userId;
  int id;
  String title;

  AlbumsModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory AlbumsModel.fromjson(Map<String, dynamic> data) {
    return AlbumsModel(
      userId: data["userId"],
      id: data["id"],
      title: data["title"],
    );
  }
}

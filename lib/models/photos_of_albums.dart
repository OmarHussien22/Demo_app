class PhotosModel {
  PhotosModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory PhotosModel.fromJson(Map<String, dynamic> dataPhotos) => PhotosModel(
        albumId: dataPhotos["albumId"],
        id: dataPhotos["id"],
        title: dataPhotos["title"],
        url: dataPhotos["url"],
        thumbnailUrl: dataPhotos["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}

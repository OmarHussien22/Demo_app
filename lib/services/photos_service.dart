import 'package:demo_app/models/photos_of_albums.dart';

import '../helpers/api.dart';

class PhotosService {
  Future<List<PhotosModel>> getAllAllPhoto() async {
    List<dynamic> data = await Api().get(
      url: "https://jsonplaceholder.typicode.com/photos",
      token: '',
    );

    List<PhotosModel> photosList = [];

    for (int i = 0; i < data.length; i++) {
      photosList.add(
        PhotosModel.fromJson(data[i]),
      );
    }
    return photosList;
  }
}

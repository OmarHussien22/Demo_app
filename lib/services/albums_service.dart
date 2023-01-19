import 'package:demo_app/models/album_ona.dart';

import '../helpers/api.dart';

class AlbumsService {
  Future<List<AlbumsModel>> getAllAlbums() async {
    List<dynamic> data = await Api().get(
      url: "https://jsonplaceholder.typicode.com/albums",
      token: '',
    );

    List<AlbumsModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(
        AlbumsModel.fromjson(data[i]),
      );
    }
    return productsList;
  }
}

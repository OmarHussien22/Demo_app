import 'package:demo_app/models/photos_of_albums.dart';
import 'package:demo_app/services/photos_service.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_image.dart';

class PhotosOfAlbums extends StatelessWidget {
  const PhotosOfAlbums({super.key});
  static String id = 'photo of albums';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('photos'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: FutureBuilder<List<PhotosModel>>(
            future: PhotosService().getAllAllPhoto(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<PhotosModel> photos = snapshot.data!;
                return ListView.builder(
                    itemCount: photos.length,
                    itemBuilder: ((context, index) {
                      return CustomImage(
                        photo: photos[index],
                      );
                    }));
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}

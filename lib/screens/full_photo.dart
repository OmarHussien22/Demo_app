import 'package:demo_app/models/photos_of_albums.dart';
import 'package:demo_app/widgets/custom_full_container.dart';
import 'package:flutter/material.dart';

import '../services/photos_service.dart';

class FullPhotos extends StatelessWidget {
  const FullPhotos({
    super.key,
  });
  static String id = 'Full Photos';

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
                      return FullCustom(
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

import 'package:flutter/material.dart';

import '../models/album_ona.dart';
import '../services/albums_service.dart';
import '../widgets/custom_container.dart';

class Albums extends StatelessWidget {
  const Albums({
    super.key,
  });
  static String id = 'albums of users';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Albums'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: FutureBuilder<List<AlbumsModel>>(
            future: AlbumsService().getAllAlbums(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<AlbumsModel> products = snapshot.data!;
                return ListView.builder(
                    itemCount: products.length,
                    itemBuilder: ((context, index) {
                      return CustomContainer(product: products[index]);
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

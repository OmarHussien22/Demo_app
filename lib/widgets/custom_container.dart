import 'package:demo_app/models/album_ona.dart';

import 'package:demo_app/screens/photos.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.product,
  });
  AlbumsModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PhotosOfAlbums.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                product.id.toString(),
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}

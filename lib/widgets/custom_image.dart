import 'package:demo_app/models/photos_of_albums.dart';
import 'package:demo_app/screens/full_photo.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget {
  CustomImage({super.key, required this.photo});
  PhotosModel photo;

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: GestureDetector(
        onTap: (() {
          Navigator.pushNamed(context, FullPhotos.id);
        }),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.5)),
          height: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                widget.photo.thumbnailUrl,
                height: 150,
                width: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

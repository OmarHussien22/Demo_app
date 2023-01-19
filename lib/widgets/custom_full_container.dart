import 'package:flutter/material.dart';

import '../models/photos_of_albums.dart';

class FullCustom extends StatefulWidget {
  FullCustom({super.key, required this.photo});
  PhotosModel photo;
  @override
  State<FullCustom> createState() => _FullCustomState();
}

class _FullCustomState extends State<FullCustom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
          width: 600,
          height: 700,
          child: Image.network(
            widget.photo.url,
            fit: BoxFit.fill,
          )),
    );
  }
}

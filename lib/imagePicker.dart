import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class Practice_ImagePicker extends StatefulWidget {
  const Practice_ImagePicker({super.key});

  @override
  State<Practice_ImagePicker> createState() => _Practice_ImagePickerState();
}

class _Practice_ImagePickerState extends State<Practice_ImagePicker> {
  File? _image;
  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imagePermanent = await saveFilePermanently(image.path);

      setState(() {
        this._image = imagePermanent;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image! : $e');
    }
  }

  Future<File> saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Image Picker"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.blueGrey,
              child: Center(
                child: _image != null
                    ? Image.file(
                        _image!,
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        "https://is4-ssl.mzstatic.com/image/thumb/Purple125/v4/4d/18/27/4d1827b7-924f-f338-5d44-87e84b5f3b70/AppIcon-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/1200x600wa.png",
                        height: 250,
                        width: 250,
                      ),
              ),
            ),
            // Divider(),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    getImage(ImageSource.camera);
                  },
                  child: Icon(Icons.camera),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    getImage(ImageSource.gallery);
                  },
                  child: Icon(Icons.photo_library),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

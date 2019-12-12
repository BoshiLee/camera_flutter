import 'package:camera/camera.dart';
import 'package:camera_example_flutter/take_picture_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: StartTakePictureScreen(),
    ),
  );
}

class StartTakePictureScreen extends StatelessWidget {
  void pushToCamera(BuildContext context) async {
    final cameras = await availableCameras();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TakePictureScreen(camera: cameras.first),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Example'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Take A Picture'),
          onPressed: () {
            this.pushToCamera(context);
          },
        ),
      ),
    );
  }
}

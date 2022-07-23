import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:object_detection_app/HomePage.dart';

List<CameraDescription>? cameraList;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameraList = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Object Detection App',
      home: HomePage(),
    );
  }
}

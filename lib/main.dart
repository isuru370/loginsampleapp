import 'package:device_preview/device_preview.dart';
import 'package:exsample_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(builder: (context) => const MyApp()),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  HomePage(),
    );
  }
}

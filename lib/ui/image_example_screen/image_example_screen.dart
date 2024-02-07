import 'package:flutter/material.dart';

class ImageExampleScreen extends StatefulWidget {
  const ImageExampleScreen({super.key});

  @override
  State<ImageExampleScreen> createState() => _ImageExampleScreenState();
}

class _ImageExampleScreenState extends State<ImageExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
    );
  }
}

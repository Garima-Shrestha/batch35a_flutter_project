import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  const ImageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image View Screen"), centerTitle: true),
      body:
        SingleChildScrollView(   // Helps you scroll
          child: Column(
            children: [
              Image.asset('assets/images/image1.jpg'),
              Image.asset('assets/images/image2.jpg'),  // image saved in folder
              Image.network('https://plus.unsplash.com/premium_photo-1694819488591-a43907d1c5cc?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y3V0ZSUyMGRvZ3xlbnwwfHwwfHx8MA%3D%3D')   // loading image from internet, copy image address
            ],
          ),
        ),
    );
  }
}

import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Placeholder for Camera Preview
          Container(
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Text(
                'Camera Preview',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          // Capture Button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: FloatingActionButton(
                onPressed: () {
                  // Add your action for capturing an image
                },
                child: Icon(Icons.camera, color: Color(0xff25D366),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
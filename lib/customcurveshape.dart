import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final Path path = Path();
    path.lineTo(0.0, size.height-80);


    path.quadraticBezierTo(size.width*0.05, size.height-110, size.width*0.18, size.height - 80);
    path.quadraticBezierTo(size.width *0.35, size.height-60, size.width*0.44, size.height - 80);
    path.quadraticBezierTo(size.width *0.6, size.height-120, size.width*0.72, size.height - 90);
    path.quadraticBezierTo(size.width*0.8, size.height-80, size.width*0.88, size.height-100 );
    path.quadraticBezierTo(size.width*0.95, size.height-120, size.width, size.height-160 );
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}


class CustomShapeClipperSecond extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final Path path = Path();
    path.lineTo(0.0, size.height-30);


    path.quadraticBezierTo(size.width*0.1, size.height, size.width*0.3, size.height-50);
    path.quadraticBezierTo(size.width *0.5, size.height-100, size.width*0.62, size.height-60);
    path.quadraticBezierTo(size.width *0.8, size.height, size.width, size.height-80);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}

class CustomShapeClipperThird extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final Path path = Path();
    path.lineTo(0.0, size.height-60);


    path.quadraticBezierTo(size.width*0.15, size.height-120, size.width*0.3, size.height - 85);
    path.quadraticBezierTo(size.width *0.4, size.height-60, size.width*0.50, size.height - 100);
    path.quadraticBezierTo(size.width *0.65, size.height-170, size.width*0.87, size.height - 90);
    path.quadraticBezierTo(size.width, size.height-55, size.width+10, size.height-75 );
    path.lineTo(size.width, size.height-75);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}

class CustomShapeClipperFour extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final Path path = Path();
    path.lineTo(0.0, size.height);
path.lineTo(size.width*0.7, size.height);

    path.quadraticBezierTo(size.width, size.height-120, size.width + 80, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
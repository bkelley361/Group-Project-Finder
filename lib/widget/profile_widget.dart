import 'dart.io';
import 'package:flutter/material.dart';

class Profile_widget extends StatelessWidget{
  final String image;
  final Voidcallback whenClicked;

  const Profile_widget({
    Key? key,
    required this.image,
    required this.whenClicked,
  }): super(key: key);

  @override
  Widget build(BuildContext context){
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: buildimage(),
    )
  }

  Widget buildimage(){
    final imagedisplay= NetworkImage(image);
    return ClipOval(
      child: material(
        color: Colors.transparent,
        child: Ink.image(
          image: imagedisplay,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
        ),
      ),
    );
  }
}
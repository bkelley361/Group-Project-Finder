import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class ProfilePage extends StatefulWidget {

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context){
    final user = Usersetup.myUser;
  
    return Scaffold(
      Bar_widget:,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Profile_widget(
            image: user.image,
            whenClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildname(user),
          const SizedBox(height: 24),
          ProjectNumWidget(),
          const SizedBox(height: 48),
          buildabout(user),
        ],
      ),
    );
  }

  Widget buildname(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight:  fontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: TextStyle(color: Colors.grey),
      ),
    ],
  );

  Widget buildabout(User user) => Container(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ABOUT',
          style: TextStyle(fontWeight:  fontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 16),
        Text(
          user.about,
          style: TextStyle(height: 1.4, fontSize: 16),
        ),
      ],
    )
  );


}
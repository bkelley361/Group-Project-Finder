// ignore_for_file: no_logic_in_create_state

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:ui';
import 'DragWidget.dart';
import 'TagWidget.dart';

//enum to show which way something will be swiped

//Class to define the paramters and what will show on the swipeable card
class SwipeableCardProfile {
  const SwipeableCardProfile({
    Key? key,
    required this.name,
    required this.projectIdea,
    required this.prevProjects,
    required this.description,
    required this.classNum,
  });

  final String name;
  final String projectIdea;
  final String prevProjects;
  final String description;
  final String classNum;
}

//The UI of the swipeable card.
// ignore: must_be_immutable
class SwipeableCard extends StatelessWidget {
  SwipeableCard({Key? key, required this.swipeableProfile}) : super(key: key);
  final SwipeableCardProfile swipeableProfile;

  //Gets the screen size for the phone
  var screenSize = window.physicalSize;

  //The color for the card background and the text
  var colorCard = const Color.fromARGB(255, 255, 255, 255);
  var colorBorder = const Color.fromARGB(255, 79, 202, 255);
  var colorText = const Color.fromARGB(255, 56, 56, 56);

  //The Swipeable card widget
  @override
  Widget build(BuildContext context) {
    return Container(
        //COntains the whole card code
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
          side: BorderSide(color: colorBorder, width: 5),
          borderRadius: BorderRadius.circular(10.0),
        )),
        //Sizes the card to fit the screen you are looking at
        child: Container(
            width: screenSize.width / 3.2,
            height: screenSize.height / 5,
            decoration: BoxDecoration(
              color: colorCard,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                //Sizes the card again to make sure the sections fit
                Container(
                  width: screenSize.width / 3,
                  height: screenSize.height / 5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: colorCard,
                  ),
                  child: Column(
                    children: <Widget>[
                      //Contains the text for the student
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text(
                            swipeableProfile.name,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.ptSerif(
                                fontSize: 20, color: colorText),
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text(
                            swipeableProfile.projectIdea,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.ptSerif(
                                fontSize: 20, color: colorText),
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                          child: Text(
                            swipeableProfile.classNum,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.ptSerif(
                                fontSize: 20, color: colorText),
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                          child: AutoSizeText(
                            swipeableProfile.description,
                            style: GoogleFonts.ptSerif(
                                fontSize: 15, color: colorText),
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                          child: AutoSizeText(
                            swipeableProfile.prevProjects,
                            style: GoogleFonts.ptSerif(
                                fontSize: 15, color: colorText),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ))
                    ],
                  ),
                ),
              ],
            )));
  }
}

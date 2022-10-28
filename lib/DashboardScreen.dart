// ignore_for_file: non_constant_identifier_names, prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:ui';
import './swipeHelpers/CardStackWidget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, required this.title});

  final String title;

  @override
  State<DashboardScreen> createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen> {
  var screenSize = window.physicalSize;

  var colorBackground = const Color.fromARGB(255, 255, 255, 255);
  var colorBarDrawer = Color.fromARGB(255, 79, 202, 255);
  var colorBarDrawer2 = Color.fromARGB(255, 159, 255, 216);
  var colorBarDrawer3 = const Color.fromARGB(255, 209, 251, 234);
  var colorText = const Color.fromARGB(255, 56, 56, 56);

  List<String> radius_items = ['5 Miles', '10 Miles', '15 Miles', '20 Miles'];
  String? selected_radius = '5 Miles';

  List<String> class_items = ['CIS 350', 'CIS 365', 'CIS 241'];
  String selected_class = 'CIS 350';

  String _name = 'bkelley361';
  String _project_idea = 'GPF';

  String _description =
      'My name is Ben kelley and I am currently looking for a group project partner for the GPF project. My skills include Flutter, Firebase, and JIRA';
  String _prev_projects = 'Maze Generator and Solver';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBackground,
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          title: Text(
              style: GoogleFonts.creteRound(fontSize: 20, color: colorText),
              widget.title),
          backgroundColor: colorBarDrawer,
        ),
        drawer: Drawer(
            child: Container(
          color: colorBackground,
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            SizedBox(
                height: 100,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                      color: colorBarDrawer,
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(20))),
                  child: Text(
                    'Actions',
                    style: GoogleFonts.creteRound(
                        textStyle: TextStyle(
                      color: colorText,
                      fontSize: 24,
                    )),
                  ),
                )),
            ListTile(
              leading: const Icon(Icons.amp_stories_rounded),
              title: Text(
                  style: GoogleFonts.ptSerif(fontSize: 20, color: colorText),
                  'View Projects'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_sharp),
              title: Text(
                  style: GoogleFonts.ptSerif(fontSize: 20, color: colorText),
                  'Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ]),
        )),
        body: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.topCenter,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                      child: DropdownButton<String>(
                          borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(10),
                              top: Radius.circular(10)),
                          value: selected_radius,
                          hint: Text('Radius',
                              style: GoogleFonts.ptSerif(fontSize: 17)),
                          items: radius_items
                              .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item,
                                      style:
                                          GoogleFonts.ptSerif(fontSize: 17))))
                              .toList(),
                          onChanged: (item) =>
                              setState(() => selected_radius = item)),
                    ),
                    const Spacer(),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        child: DropdownButton<String>(
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(10),
                                top: Radius.circular(10)),
                            value: selected_class,
                            items: class_items
                                .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(item,
                                        style:
                                            GoogleFonts.ptSerif(fontSize: 17))))
                                .toList(),
                            onChanged: (item) =>
                                setState(() => selected_class = item!)))
                  ],
                )),
            Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                    child: Text('Radius',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ptSerif(fontSize: 20))),
                const Spacer(),
                Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                    child: Text('Class #',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ptSerif(fontSize: 20)))
              ],
            ),
            Stack(children: const <Widget>[
              CardsStackWidget(),
            ]),
            Container(
                alignment: Alignment.center,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.center,
                            child: Row(
                              children: const <Widget>[
                                Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(15, 15, 20, 10),
                                    child: Icon(
                                      Icons.cancel,
                                      size: 70,
                                      color: Color.fromARGB(255, 145, 56, 50),
                                    )),
                                Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 15, 20, 10),
                                    child: Icon(
                                      Icons.star_rounded,
                                      size: 70,
                                      color: Color.fromARGB(255, 211, 208, 67),
                                    )),
                                Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 15, 15, 10),
                                    child: Icon(
                                      CupertinoIcons.heart_circle_fill,
                                      size: 70,
                                      color: Color.fromARGB(255, 145, 56, 50),
                                    ))
                              ],
                            ))
                      ],
                    ))),
          ],
        ));
  }
}

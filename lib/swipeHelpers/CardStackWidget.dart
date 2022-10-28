// ignore: file_names
import 'package:flutter/material.dart';
import 'SwipeableCard.dart';
import 'DragWidget.dart';

class CardsStackWidget extends StatefulWidget {
  const CardsStackWidget({Key? key}) : super(key: key);

  @override
  State<CardsStackWidget> createState() => _CardsStackWidgetState();
}

//Contains the list of students that ae populated. Will be changed when connected to firebase
class _CardsStackWidgetState extends State<CardsStackWidget> {
  List<SwipeableCardProfile> dragabbleItems = [
    const SwipeableCardProfile(
      name: 'End of Students',
      classNum: 'That was all',
      prevProjects: 'Just gotta wait for more',
      projectIdea: 'Good luck on the project',
      description: 'You swiped through every student!',
    ),
    const SwipeableCardProfile(
      name: 'Ben',
      classNum: 'CIS365',
      prevProjects: 'Pacman',
      projectIdea: 'Game Agent',
      description: 'Cool agent to be made',
    ),
    const SwipeableCardProfile(
      name: 'Ben Kelley',
      classNum: 'CIS241',
      prevProjects: 'Things that happen',
      projectIdea: 'Random Stuff',
      description: 'What should we make?',
    ),
    const SwipeableCardProfile(
      name: 'Kelley',
      classNum: 'CIS241',
      prevProjects: 'MProject 2',
      projectIdea: 'Bash Stuff',
      description: 'Cool commands to be made',
    ),
  ];

  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  //The UI for the stack of students
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          //Creates the rounded corners
          borderRadius: BorderRadius.circular(10),
          child: ValueListenableBuilder(
            valueListenable: swipeNotifier,
            builder: (context, swipe, _) => Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: List.generate(dragabbleItems.length, (index) {
                return DragWidget(
                  swipeablecardprofile: dragabbleItems[index],
                  index: index,
                  swipeNotifier: swipeNotifier,
                );
              }),
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return IgnorePointer(
                child: Container(
                  height: 700.0,
                  width: 80.0,
                  color: Colors.transparent,
                ),
              );
            },
            onAccept: (int index) {
              setState(() {
                dragabbleItems.removeAt(index);
              });
            },
          ),
        ),
        Positioned(
          right: 0,
          child: DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return IgnorePointer(
                child: Container(
                  height: 700.0,
                  width: 80.0,
                  color: Colors.transparent,
                ),
              );
            },
            onAccept: (int index) {
              setState(() {
                dragabbleItems.removeAt(index);
              });
            },
          ),
        ),
      ],
    );
  }
}

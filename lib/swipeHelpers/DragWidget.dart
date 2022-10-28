import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:ui';
import 'SwipeableCard.dart';
import 'TagWidget.dart';

//enum to show which way something will be swiped
enum Swipe { left, right, none, up }

class DragWidget extends StatefulWidget {
  const DragWidget(
      {Key? key,
      required this.swipeablecardprofile,
      required this.index,
      required this.swipeNotifier})
      : super(key: key);

  final SwipeableCardProfile swipeablecardprofile;
  final int index;
  final ValueNotifier<Swipe> swipeNotifier;

  @override
  State<DragWidget> createState() => _DragWidgetState();
}

//The full class to allow the user to swipe
class _DragWidgetState extends State<DragWidget> {
  //Will display a Like or Dislike depending on which way they swipe
  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  @override
  Widget build(BuildContext context) {
    return Center(
      //The draggable widget
      child: Draggable<int>(
          data: widget.index,
          feedback: Material(
            color: Colors.transparent,
            child: ValueListenableBuilder(
              //Listens to see if the card is swiped
              valueListenable: swipeNotifier,
              builder: (context, swipe, _) {
                return RotationTransition(
                  //checks to see which way the card was swiped, right, left or up
                  turns: swipe != Swipe.none
                      ? swipe == Swipe.left
                          //Animates the card depending on which way it was swiped
                          ? const AlwaysStoppedAnimation(-10 / 360)
                          : const AlwaysStoppedAnimation(10 / 360)
                      : const AlwaysStoppedAnimation(0),
                  child: Stack(
                    children: [
                      //Stack containing the swipeable cards
                      SwipeableCard(
                          swipeableProfile: widget.swipeablecardprofile),
                      swipe != Swipe.none
                          ? swipe == Swipe.right
                              //Shows a tag if the card is swiped
                              ? Positioned(
                                  top: 40,
                                  left: 20,
                                  child: Transform.rotate(
                                    angle: 12,
                                    child: const TagWidget(
                                      text: 'LIKE',
                                      color: Color.fromARGB(255, 105, 238, 111),
                                    ),
                                  ),
                                )
                              : Positioned(
                                  top: 50,
                                  right: 24,
                                  child: Transform.rotate(
                                    angle: -12,
                                    child: const TagWidget(
                                      text: 'DISLIKE',
                                      color: Color.fromARGB(255, 255, 4, 0),
                                    ),
                                  ),
                                )
                          : const SizedBox.shrink(),
                    ],
                  ),
                );
              },
            ),
          ),
          onDragUpdate: (DragUpdateDetails dragUpdateDetails) {
            //When the widget is dragged right
            if (dragUpdateDetails.delta.dx > 0 &&
                dragUpdateDetails.globalPosition.dx >
                    MediaQuery.of(context).size.width / 2) {
              swipeNotifier.value = Swipe.right;
            }
            //When the widget is dragged right
            if (dragUpdateDetails.delta.dx < 0 &&
                dragUpdateDetails.globalPosition.dx <
                    MediaQuery.of(context).size.width / 2) {
              swipeNotifier.value = Swipe.left;
            }
          },
          //When the dragging ends
          onDragEnd: (drag) {
            swipeNotifier.value = Swipe.none;
          },
          //Shows transparent when card is being dragged
          childWhenDragging: Container(
            color: Colors.transparent,
          ),
          //Contains the next Swipeable card
          child: SwipeableCard(swipeableProfile: widget.swipeablecardprofile)),
    );
  }
}

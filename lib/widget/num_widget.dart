import 'package:flutter/material.dart';

class ProjectNumWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) => IntrinsicHeight(
    child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildDivider(),
        buildButton(context, '25', 'Projects'),
        buildDivider(),
      ],
    ),
  );

  Widget buildDivider() => container(
    height: 24,
    child:   verticalDivider(),
  );

  Widget buildButton(BuildContext context,  String value, String text) => ProjectsButton(
    padding: EdgeInsets.symmetric(vertical: 6),

    onPressed: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)
        ),
        SizedBox(height: 3),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold)
        ),
      ],
    ),
  );
}
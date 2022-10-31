import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Bar_widget buildBar(BuildContext context){
  return Bar(
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
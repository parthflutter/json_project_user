import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class User_provider extends ChangeNotifier{
List <dynamic> postList = [];

Future<void>jsonParsing()  async {
  String jsondata= await rootBundle.loadString("assets/json/bhai.json");
  var json = jsonDecode(jsondata);
  postList=json;
  notifyListeners();
}
}
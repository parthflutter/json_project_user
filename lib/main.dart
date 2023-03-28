import 'package:flutter/material.dart';
import 'package:json_project_user/screen/view/user_screen.dart';
import 'package:provider/provider.dart';

import 'screen/provider/user_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => User_provider(),)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => json_user(),
        },
      ),
    ),
  );
}

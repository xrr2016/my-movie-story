import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import './ui/home_page.dart';
import './constants/strings.dart';

Future main() async {
  await DotEnv().load('.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hello = DotEnv().env['HELLO'];

    print(hello);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task2/screens/mainscreen.dart';
import 'package:task2/widgets/passingargument.dart';
import 'package:task2/details/argument.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '2nd task',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final ScreenArguments args = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                firstName: args.firstName,
                lastName: args.lastName,
               address: args.address,
                phoneNo: args.phoneNo,
              );
            },
          );
        }
        assert(false, 'Implementation ${settings.name}');
        return null;
      },
      home: MyHomePage(),
    );
  }
}


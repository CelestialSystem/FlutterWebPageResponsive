import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(

      body: LayoutBuilder(
        builder: (builder, constraints) {
          var bigScreen = constraints.maxWidth > 800;
          if (bigScreen) {
            return Center(
              child: Row(
                children: [
                  Image.asset('images/home.png',
                      width: screenSize.width / 2, height: screenSize.height),
                  const SigninContainer(),
                ],
              ),
            );
          } else {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SigninContainer(),
                ],
              ),
            );
          }
        },
      ),

      // Center(
      //   child: Row(
      //     children: [
      //       Image.asset('images/home.png',
      //           width: screenSize.width / 2, height: screenSize.height),
      //       const SigninContainer(),
      //     ],
      //   ),
      // ),
    );
  }
}

class SigninContainer extends StatelessWidget {
  const SigninContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Container(
          padding: EdgeInsets.all(40.0),
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
            const SizedBox(
            height: 60,
          ),
          const Text(
            'Welcome to Celestial! 👋',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
            Text(
              'Please sign-in to your account and start the adventure',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Email'),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                hintText: 'Email',
                prefixIcon: Icon(Icons.mail_outline),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Password'),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign In',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.indigoAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // <-- Radius
                ),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}

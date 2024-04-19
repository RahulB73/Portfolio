import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediapp/home.dart';
import 'package:mediapp/projects.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Soho'),
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/project': (context) => const MyProject(),
      '/': (context) => const MyHome(),
      '/about': (context) => const MyApp(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 60),
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                'assests/bnw.png',
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.55),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Hello I am',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('RAHUL BORKAR',
                    style: TextStyle(color: Colors.white, fontSize: 40)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Software Developer',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 120,
                  child: TextButton(
                    onPressed: () {
                       launchUrl(Uri.parse('https://drive.google.com/file/d/1AVM5LwKSKDrLFvIIwYijtOU-JX1BwOpk/view?usp=drivesdk'));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white, // Background Color
                    ),
                    child: const Text(
                      'Hire Me',
                      style: TextStyle(color: Colors.black), // Text Color
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                         launchUrl(Uri.parse('https://drive.google.com/file/d/1AVM5LwKSKDrLFvIIwYijtOU-JX1BwOpk/view?usp=drivesdk'));
                      },
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                         launchUrl(Uri.parse('https://drive.google.com/file/d/1AVM5LwKSKDrLFvIIwYijtOU-JX1BwOpk/view?usp=drivesdk'));
                      },
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                         launchUrl(Uri.parse('https://drive.google.com/file/d/1AVM5LwKSKDrLFvIIwYijtOU-JX1BwOpk/view?usp=drivesdk'));
                      },
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                         launchUrl(Uri.parse('https://drive.google.com/file/d/1AVM5LwKSKDrLFvIIwYijtOU-JX1BwOpk/view?usp=drivesdk'));
                      },
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                         launchUrl(Uri.parse('https://drive.google.com/file/d/1AVM5LwKSKDrLFvIIwYijtOU-JX1BwOpk/view?usp=drivesdk'));
                      },
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  projetCard(lang, title, description, star) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 220,
      child: Card(
        color: const Color.fromARGB(255, 44, 44, 45),
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse('https://drive.google.com/file/d/1AVM5LwKSKDrLFvIIwYijtOU-JX1BwOpk/view?usp=drivesdk'));
                      },
                      icon: const Icon(
                        FontAwesomeIcons.link,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff252525),
        title: const Text('Projects', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard(
                  'Flutter + Dart', 'Mediapp', 'Doctor appoitment app.', '10'),
              projetCard(
                  'Flutter + Dart', 'Portfolio', 'Application for me.', '9'),
              projetCard(
                  'MERN', 'LetsShop', 'Fullstack E-commerce Website.', '8'),
              projetCard('MERN', 'Admin Panel',
                  'Multipurpose Admin Panel Website.', '7'),
              projetCard('React', 'MoviesNation', 'Movie Update Website.', '10')
            ],
          ),
        ),
      ),
    );
  }
}

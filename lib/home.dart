import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  aboutAchivements(number, type) {
    return Row(
      children: [
        Text(number,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Soho",
            )),
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              type,
              style: const TextStyle(
                fontFamily: "Soho",
              ),
            ))
      ],
    );
  }

  mySpec(icon, text) {
    return SizedBox(
      height: 115,
      width: 105,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color.fromARGB(255, 37, 37, 37),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 16, fontFamily: "Soho", color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton(
            color: const Color.fromARGB(255, 3, 36, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: TextButton(
                        child: const Text(
                          'Projects',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/project');
                        }),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: TextButton(
                        child: const Text(
                          'About Me',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/about');
                        }),
                  )
                ]),
      ),

      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 45),
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
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.49),
              child: const Column(
                children: [
                  Text('RAHUL BORKAR',
                      style: TextStyle(
                          fontFamily: "Soho",
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Soho", fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    aboutAchivements('B.E', ' Engin.'),
                    aboutAchivements('CS', ' Branch'),
                    aboutAchivements('RTMNU', ' Nagpur'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Skills',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Soho",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.java, 'Java'),
                        mySpec(FontAwesomeIcons.react, 'ReactJs'),
                        mySpec(FontAwesomeIcons.js, 'JavaSript'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.nodeJs, 'NodeJs'),
                        mySpec(FontAwesomeIcons.database, 'MongoDB'),
                        mySpec(FontAwesomeIcons.leaf, 'ExpressJs'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(FontAwesomeIcons.mobile, 'Flutter'),
                        mySpec(FontAwesomeIcons.github, 'Git/Github'),
                        mySpec(FontAwesomeIcons.code, 'SQL'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),

      // body: Container(
      //   child: Stack(
      //     children: [
      //       Container(
      //         margin: EdgeInsets.only(top: 35),
      //         child: ShaderMask(
      //           shaderCallback: (rect) {
      //             return LinearGradient(
      //               begin: Alignment.center,
      //               end: Alignment.bottomCenter,
      //               colors: [Colors.black, Colors.transparent],
      //             ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      //           },
      //           blendMode: BlendMode.dstIn,
      //           child: Image.asset(
      //             'assests/bnw.png',
      //             height: 400,
      //             fit: BoxFit.contain,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         alignment: Alignment.center,
      //         margin: EdgeInsets.only(
      //             top: MediaQuery.of(context).size.height * 0.49),
      //         child: Column(
      //           children: [
      //             Text('Siddharth Chopra',
      //                 style: TextStyle(color: Colors.white, fontSize: 40)),
      //             SizedBox(
      //               height: 10,
      //             ),
      //             Text(
      //               'Software Developer',
      //               style: TextStyle(color: Colors.white, fontSize: 20),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

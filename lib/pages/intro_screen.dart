import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool darkTheme =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: darkTheme ? Colors.black : Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            // big logo
            Padding(
              padding: const EdgeInsets.only(
                left: 100.0,
                right: 100.0,
                top: 120,
                bottom: 20,
              ),
              child: darkTheme ? Image.asset('lib/images/introstickerDark.png') : Image.asset('lib/images/introstickerLight.png'),
            ),

            // Grocery shopping made easy!
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text('Grocery shopping made easy!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: darkTheme ? Colors.grey[50] : Color(0xFF03648F),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  )),
            ),

            // grocery gives you fresh vegetables and fruits
            Text(
              'Fresh items for you',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: darkTheme ? Colors.grey[50] : Color(0xFF03648F),
              ),
            ),

            const SizedBox(height: 24),

            const Spacer(),

            Container(
              child: SliderButton(
                action: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => HomePage())),

                /// label over here
                label: Text(
                  "Slide to start !",
                  style: TextStyle(
                      color: darkTheme ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                icon: Center(
                    child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40.0,
                )),

                /// All the color and size from here.
                width: 230,
                radius: 10,
                buttonColor: darkTheme ? Colors.deepPurple : Color(0xFF03648F),
                backgroundColor: Colors.grey.shade200,
                highlightedColor: darkTheme ? Colors.deepPurple : Color(0xFF03648F),
                baseColor: darkTheme ? Colors.black: Colors.white,
              ),
            ),
            // get started button
            // GestureDetector(
            //   onTap: () => Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return HomePage();
            //       },
            //     ),
            //   ),
            //    child:
            //   Container(
            //     width: 300,
            //     height: 60,
            //     padding: const EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(40),
            //       color: darkTheme ? Colors.deepPurple : Colors.green,
            //     ),
            //     child: Center(
            //       child: Text(
            //         "Get Started",
            //         style: TextStyle(
            //           color: Colors.white,
            //           // fontWeight: FontWeight.bold,
            //           fontSize: 20,
            //         ),
            //       ),
            //     )
            //   ),
            // ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}

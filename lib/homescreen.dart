import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  myAchiev(number, type) {
    return Row(
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(type),
        ),
      ],
    );
  }

  mySpec(icon, tech) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 105,
              height: 115,
              child: Card(
                margin: const EdgeInsets.all(0),
                color: const Color(0xff252525),
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
                      tech,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],

          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("emmanuel.jpg"), fit: BoxFit.cover),
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev('5', 'Projects'),
                    myAchiev('4', 'Clients'),
                    myAchiev('78', 'Messages'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Specialized in ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(
                          Icons.mail,
                          'Email',
                        ),
                        mySpec(
                          Icons.messenger,
                          'Messenger',
                        ),
                        mySpec(
                          Icons.message,
                          'Message',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(
                          Icons.chrome_reader_mode,
                          'Chrome',
                        ),
                        mySpec(
                          Icons.shopping_cart,
                          'Buy',
                        ),
                        mySpec(
                          Icons.wordpress,
                          'WordPress',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(
                          Icons.reddit,
                          'Reddit',
                        ),
                        mySpec(
                          Icons.quora,
                          'Quora',
                        ),
                        mySpec(
                          Icons.facebook,
                          'Facebook',
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

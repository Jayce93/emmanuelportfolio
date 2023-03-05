import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.black,
          ),
          const Text(
            'Ogunniyi Emmanuel',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(color: Colors.black),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            color: const Color.fromRGBO(0, 0, 0, 1),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '+2348065526504',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Icon(
                    Icons.arrow_circle_right_sharp,
                    color: Colors.white,
                  ),
                ]),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            color: const Color.fromRGBO(0, 0, 0, 1),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Send WhatsApp Message',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(
                    width: 35.0,
                  ),
                  Icon(
                    Icons.arrow_circle_right_sharp,
                    color: Colors.white,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WorkListScreen extends StatefulWidget {
  const WorkListScreen({super.key});

  @override
  State<WorkListScreen> createState() => _WorkListScreenState();
}

class _WorkListScreenState extends State<WorkListScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21),
              topRight: Radius.circular(21),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'App Portfolio ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Click Here',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),

        // Second Container Work list
        Container(
          height: 150.0,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1593720213428-28a5b9e94613?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2ViJTIwZGV2ZWxvcG1lbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Web Development',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        // Third Container
        Container(
          height: 150.0,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1593720213428-28a5b9e94613?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2ViJTIwZGV2ZWxvcG1lbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'App Development',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

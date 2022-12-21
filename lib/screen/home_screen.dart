import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818), // Color.fromARFB()
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 18,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '\$5,194,482',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 60,
                          ),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45.0),
                        ))),
                    onPressed: () {},
                    child: const Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

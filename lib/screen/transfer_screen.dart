import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Send Money',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color(0xFF81ECE6),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 146,
                  height: 146,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/johnhan.jpeg'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SlideAction(
              onSubmit: () {},
              innerColor: Colors.deepPurple,
              outerColor: Colors.deepPurple[200],
              elevation: 0,
              sliderButtonIcon: const Icon(
                Icons.money_outlined,
                color: Colors.white,
              ),
              text: "Swipe to send",
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              sliderRotate: false,
              borderRadius: 12,
            ),
          ],
        ),
      ),
    );
  }
}

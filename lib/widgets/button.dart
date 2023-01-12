import 'package:flutter/material.dart';
import 'package:wallet_app_ui/screen/transfer_screen.dart';

class BankButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const BankButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TransferScreen(),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 50,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

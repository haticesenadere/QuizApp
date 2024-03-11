import 'package:flutter/material.dart';

class ElevadetButton extends StatelessWidget {
  const ElevadetButton(
      {super.key, required this.onPressed, required this.label});

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: Card(
            color: onPressed != null
                ? Colors.orange.shade800
                : Colors.orange.shade400,
            child: Center(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ink.image(
                      image: AssetImage('assets/rocket.png'),
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      label,
                      style: const TextStyle(
                          letterSpacing: 2,
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontFamily: 'questions'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:quizapp/data/Questions.dart';
import 'package:quizapp/screens/screen_start.dart';
import 'package:quizapp/widget/next_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(92, 46, 139, 1),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Positioned(
            left: 12,
            right: 24,
            child: Container(
              height: 140,
              width: 140,
              child: Image.asset("assets/bravo.png"),
            ),
          ),
          const Text(
            "Tebrikler",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: 'YourFontFamily',
            ),
          ),
          const Text(
            "Sona Ulaştınız",
            style: TextStyle(
                fontSize: 40,
                fontFamily: 'YourFontFamily',
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(
            height: 40,
            width: 40,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 220,
                width: 220,
                child: CircularProgressIndicator(
                  strokeWidth: 12,
                  value: score / 20,
                  color: const Color.fromRGBO(237, 201, 151, 0.976),
                  backgroundColor: const Color.fromRGBO(215, 125, 0, 1),
                ),
              ),
              Column(
                children: [
                  Text(
                    score.toString() + "/20",
                    style: const TextStyle(
                        fontFamily: 'YourFontFamily',
                        fontSize: 70,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${(score / questions.length * 100).round()}%",
                    style: const TextStyle(
                        fontFamily: 'YourFontFamily',
                        fontSize: 29,
                        color: Colors.white),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            width: 100,
            height: 100,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(250, 50)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orange.shade800)),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (_) => const ScreenStart(),
                ));
              },
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Ink.image(
                  image: const AssetImage('assets/rocket.png'),
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                const Text(
                  "Yeniden Başla",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'questions',
                      fontSize: 16),
                )
              ])),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizapp/screens/question_screen.dart';

class ScreenStart extends StatelessWidget {
  const ScreenStart({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Start.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              bottom: 175,
              left: 135,
              child: Text(
                "Flutter",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'YourFontFamily'),
              ),
            ),
            const Positioned(
              bottom: 125,
              left: 100,
              child: Text(
                "Quiz App",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'YourFontFamily'),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 165,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionScreen()));
                },
                child: Container(
                  height: 65,
                  width: 65,
                  child: Image.asset("assets/rocket.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*class QuestionsScreen1 extends StatefulWidget {
  const QuestionsScreen1({super.key});
  @override
  State<StatefulWidget> createState() => _QuestionsState();
}

class _QuestionsState extends State<QuestionsScreen1> {
  String question = "Soru 1";

  void changeQuestion() {
    setState(() {
      question = "Soru 2";
    }); // değişikliklerin ekrana da yansıtılması için gerekli.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(question),
        TextButton.icon(
            onPressed: () {
              changeQuestion();
            },
            icon: const Icon(Icons.add_alert_sharp),
            label: const Text("cevap"))
      ]),
    ));
  }
}
*/
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/data/Questions.dart';
import 'package:quizapp/screens/result_screeb.dart';
import 'package:quizapp/widget/answer_card.dart';
import 'package:quizapp/widget/next_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  void pickAnswer(int value) {
    setState(() {
      selectedAnswerIndex = value;
      final question = questions[questionIndex];

      if (selectedAnswerIndex == question.correctAnswer) {
        score++;
      }
    });
  }

  void goToNextQuestions() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex++;
        selectedAnswerIndex = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    bool isLastQuestion = questionIndex == questions.length - 1;

    return Scaffold(
      backgroundColor: Color.fromRGBO(68, 10, 123, 100),
      body: Stack(
        children: [
          Positioned(
            left: 25,
            top: 55,
            child: Container(
              height: 125,
              width: 125,
              child: Image.asset("assets/roc_planet.png"),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                  width: 70,
                ),
                Container(
                  height: 130,
                  width: 450,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.elliptical(25, 25),
                        left: Radius.elliptical(25, 25)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topLeft,
                      colors: [
                        Color.fromARGB(255, 185, 99, 202),
                        Color.fromARGB(255, 217, 180, 58),
                        Color.fromARGB(255, 233, 102, 92)
                      ],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      currentQuestion.question,
                      style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: 'questions',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: currentQuestion.options.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: selectedAnswerIndex == null
                            ? () => pickAnswer(index)
                            : null,
                        child: AnswerCard(
                          currentIndex: index,
                          questio: currentQuestion.options[index],
                          isSelected: selectedAnswerIndex == index,
                          selectedAnswerIndex: selectedAnswerIndex,
                          correctAnswerIndex: currentQuestion.correctAnswer,
                        ),
                      );
                    },
                  ),
                ),
                isLastQuestion
                    ? ElevadetButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => ResultScreen(score: score)));
                        },
                        label: 'Finish')
                    : ElevadetButton(
                        onPressed: selectedAnswerIndex != null
                            ? goToNextQuestions
                            : null,
                        label: 'Next',
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

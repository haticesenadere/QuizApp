import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    Key? key,
    required this.questio,
    required this.isSelected,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
    required this.currentIndex,
  }) : super(key: key);
  final String questio;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        child: selectedAnswerIndex != null
            ? Container(
                height: 80,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    width: 2,
                    color: isCorrectAnswer
                        ? Colors.green
                        : isWrongAnswer
                            ? Colors.red
                            : Colors.white,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        questio,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    isCorrectAnswer
                        ? buildCorrectIcon()
                        : isWrongAnswer
                            ? buildWrongIcon()
                            : const SizedBox.shrink()
                  ],
                ),
              )
            : Container(
                height: 80,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        questio,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'questions',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ));
  }
}

Widget buildCorrectIcon() => const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.green,
      child: Icon(
        Icons.check,
        color: Colors.white,
      ),
    );

Widget buildWrongIcon() => const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.red,
      child: Icon(
        Icons.close,
        color: Colors.white,
      ),
    );

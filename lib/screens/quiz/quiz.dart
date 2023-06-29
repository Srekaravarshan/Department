import 'package:department/widgets/widgets.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              quizCard(prior: true),
              const SizedBox(height: 15),
              quizCard(),
              const SizedBox(height: 15),
              quizCard(),
              const SizedBox(height: 15),
              quizCard(),
              const SizedBox(height: 15),
              quizCard(),
            ],
          ),
        ),
      ),
    );
  }
}

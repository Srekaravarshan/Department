import 'package:department/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PlacementScreen extends StatelessWidget {
  const PlacementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              quizCard(prior: true),
              const SizedBox(height: 15),
              borderedButton(),
              const SizedBox(height: 30),
              Text('Preparation', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const SizedBox(height: 15),
              materialCard(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:department/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(context), body: _body());
  }

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _blogTabs(),
        Flexible(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  quizCard(prior: true),
                  const SizedBox(height: 20),
                  blogCard(context),
                  const SizedBox(height: 20),
                  blogCard(context),
                  const SizedBox(height: 20),
                  blogCard(context),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _tab(String title, bool s) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              color: s ? Colors.black : Colors.black54,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 2),
        Container(
          height: 4,
          width: 40,
          decoration: BoxDecoration(
              color: s ? Colors.black : Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(4))),
        )
      ],
    );
  }

  Widget _blogTabs() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 15),
            _tab('Latest', true),
            const SizedBox(width: 15),
            _tab('Articles', false),
            const SizedBox(width: 15),
            _tab('Activities', false),
            const SizedBox(width: 15),
            _tab('DYK', false),
          ],
        ),
      ),
    );
  }
}

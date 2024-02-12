import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Text(
            question,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}

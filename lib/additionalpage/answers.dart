import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;
  final void Function()? onPressed;

  const Answers({
    super.key,
    required this.answer,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: FilledButton.tonal(
          onPressed: onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder?>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          child: Text(
            answer,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xff000000),
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}

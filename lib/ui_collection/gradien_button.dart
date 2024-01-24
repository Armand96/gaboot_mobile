import 'package:flutter/material.dart';

class GradBtn extends StatelessWidget {
  final Function() cbFunc;
  const GradBtn({super.key, required this.cbFunc});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(255, 112, 13, 161),
                    Color.fromARGB(255, 154, 50, 159),
                    Color.fromARGB(255, 210, 137, 216),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: cbFunc,
            child: const Text('Navigate'),
          ),
        ],
      ),
    );
  }
}

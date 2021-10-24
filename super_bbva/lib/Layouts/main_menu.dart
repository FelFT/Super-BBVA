import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFF003882), //color BBVA
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: const EdgeInsets.all(15.0),
                      //width: 100,
                      height: 200)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFF00b5bd),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: const EdgeInsets.all(15.0),
                      //width: 100,
                      height: 200
                    )
                ],
              ),
            )
          ],
        ),
      );
  }
}

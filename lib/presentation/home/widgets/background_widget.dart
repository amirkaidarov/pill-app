import 'package:flutter/material.dart';

import '../../core/constants.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: kGradientPrimary,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.35, 0.55]),
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              Row(
                children: [
                  const Spacer(flex: 2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.7)),
                      ),
                      Text(
                        'PillBase',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .colorScheme
                                .secondary),
                      )
                    ],
                  ),
                  const Spacer(flex: 4),
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 8,
                            spreadRadius: 3)
                      ],
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(70.0),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/fencing-6bf45.appspot.com/o/userImages%2FkJwgtCv3deOqZfukxK2PSfKmVBa2?alt=media&token=67de3eb5-5005-4f3d-8306-c6d99933cd1c'),
                      radius: 50.0,
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
              const Spacer(flex: 5),
            ],
          )
    );
  }
}

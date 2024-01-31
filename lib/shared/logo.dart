import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(),
        BounceInDown(
          child: Text(
            'Heart',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'FZ Hand 28',
                  color: Colors.red,
                  fontSize: 30,
                ),
          ),
        ),
        BounceInDown(
          child: Text(
            'Genius',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'FZ Hand 28',
                  color: Colors.black,
                  fontSize: 28,
                ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}

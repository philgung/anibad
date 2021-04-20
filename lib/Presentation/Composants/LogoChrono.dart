import 'package:flutter/material.dart';

class LogoChrono extends StatelessWidget {
  final int minutes;
  const LogoChrono(
    this.minutes, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(Icons.timer), Text('$minutes m')],
    );
  }
}

import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  TitleText({@required this.size});
  final double size;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          'KTU Help',
          style: TextStyle(fontFamily: 'Orbitron', fontSize: size * 0.7),
        ),
        Text(
          'Together we learn',
          style: TextStyle(fontFamily: 'Orbitron', fontSize: size * 0.3),
        ),
      ],
    );
  }
}

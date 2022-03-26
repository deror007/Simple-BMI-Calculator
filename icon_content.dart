import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData symbol;
  final String symbolName;

  IconContent(this.symbol, this.symbolName);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(symbol, size: 80.0),
        SizedBox(height: 15.0),
        Text(symbolName, style: kSymbolNameStyle)
      ],
    );
  }
}

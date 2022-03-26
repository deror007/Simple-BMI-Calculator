import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: kCalcNameStyle,
        )),
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        color: Color(0xDD1ed69f),
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}

class roundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  roundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed, //THIS CONNECTS THE FUNCTION TO PARAMETER.
      elevation: 6.0,
      //disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

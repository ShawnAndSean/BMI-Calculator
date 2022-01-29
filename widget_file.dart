
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant_file.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild , this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: icon_size,
        ),
        SizedBox(
          height: icon_height,
        ),
        Text(
          '$title',
          style: kLabelTextStyle,
        )
      ],
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        constraints: BoxConstraints.tightFor(
          width: 56,
          height: 56,
        ),
        elevation: 0,
        shape: CircleBorder(),
        fillColor: Colors.blue,
        onPressed: onPressed);
  }
}

class bottomButton extends StatelessWidget {
  bottomButton({this.text, this.onTap});
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.red,
        padding: EdgeInsets.all(20),
        child: Center(child: Text('$text', style: kLargeButtonTextStyle)),
      ),
    );
  }
}
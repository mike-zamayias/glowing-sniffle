import 'package:flutter/material.dart';
import 'package:hearts_card_game_sorta/constants.dart';
import 'package:hearts_card_game_sorta/widgets/buttons/label.dart';

class HeartsDealerPanel extends StatelessWidget {
  const HeartsDealerPanel({
    Key key,
    @required this.color,
    @required this.memberKind,
  }) : super(key: key);

  final String color;
  final String memberKind;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: coolors[color],
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: coolors[color].withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Label(
              flex: 2,
              backgroundColor: "white",
              text: "Dealer",
            ),
            SizedBox(
              height: 20,
            ),
            Label(
              flex: 1,
              backgroundColor: "turquoise",
              text: "data",
            ),
            SizedBox(
              height: 20,
            ),
            Label(
              flex: 1,
              backgroundColor: "maya blue",
              text: "data",
            ),
            SizedBox(
              height: 20,
            ),
            Label(
              flex: 1,
              backgroundColor: "middle red",
              text: "data",
            ),
            SizedBox(
              height: 20,
            ),
            Label(
              flex: 1,
              backgroundColor: "beige",
              text: "data",
            ),
          ],
        ),
      ),
    );
  }
}

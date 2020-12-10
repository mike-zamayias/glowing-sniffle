import 'package:feeling_good/constants.dart';
import 'package:feeling_good/main.dart';
import 'package:flutter/material.dart';

class QuestionnaireScreen extends StatefulWidget {
  QuestionnaireScreen({Key key}) : super(key: key);

  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => navigateTo('Homescreen', context, ''),
        ),
        elevation: 20.0,
        backgroundColor: colors["dark purple"],
        title: Text(
          'Questionnaire',
          style: TextStyle(
            fontFamily: 'Jura',
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: colors["light font"],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            color: colors["pale orange"],
          ),
        ),
      ),
    );
  }
}

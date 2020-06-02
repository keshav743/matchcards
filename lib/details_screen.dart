import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beauty_textfield/beauty_textfield.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

String username;

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BeautyTextfield(
              width: double.maxFinite,
              height: 60,
              duration: Duration(milliseconds: 300),
              inputType: TextInputType.text,
              prefixIcon: Icon(Icons.lock_outline),
              placeholder: "Name",
              onTap: () {
                print('Click');
              },
              onChanged: (text) {
                print(text);
              },
              onSubmitted: (data) {
                username = data;
                print(data.length);
              },
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, 'GameScreen');
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              child: Text(
                'GO!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

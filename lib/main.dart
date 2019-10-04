import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: DicePage(),
      ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int  leftdicenumber = 5;
  int rightdicenumber = 1;

    void modifyrightdice() {
      print('Right dicr clicked');
      setState(() {
              rightdicenumber = 1 + Random().nextInt(5);
              leftdicenumber =  1 + Random().nextInt(5);
      });
    }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Roll the dice'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                child: FlatButton(
                  child: Image(
                    image: AssetImage('assets/dice$leftdicenumber.png'),


                  ),
                  onPressed: () {
                    modifyrightdice();
                  },
                )
            ),
            Expanded(
              child: FlatButton(
                  child: Image(
                    image: AssetImage('assets/dice$rightdicenumber.png'),

                  ),
                  onPressed: (){
                           modifyrightdice();
                  }

              ),
            )
          ],

        ),
      ),

    );
  }
}



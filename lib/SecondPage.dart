import 'package:flutter/material.dart';

class Second extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Container(
        margin: EdgeInsets.all(10),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Text("Creativity takes courage"),
                Text("- Henri Matisse"),
                Icon(Icons.airline_seat_legroom_normal),
                Image.asset("self-portrait.jpg")


              ],


            )
        )
    );
  }

}


import 'package:flutter/material.dart';

class Third extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Container(
        margin: EdgeInsets.all(10),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Text("Art is the only way to run away"),
                Text("without leaving home"),
                Text("- Twyla Tharp"),
                Icon(Icons.camera_enhance),
                Image.asset("treasure-bird.png")


              ],


            )
        )
    );
  }

}



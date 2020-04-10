import 'package:flutter/material.dart';
import 'package:flutter_app_assign1_heinzig/main.dart';


void main()
{
  runApp(new MaterialApp(
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/ExternalPage": (BuildContext context)=> externalPage()
      }
  ));
}


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Container(
        margin: EdgeInsets.all(10),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Text("Every child is an artist"),
                Text("the problem is how to remain an artist"),
                Text("once we grow up."),
                Text("- Pablo Picasso"),
                Image.asset('images/self-portrait.jpg'),
                IconButton(icon: Icon(Icons.forward, color: Colors.blueAccent),
                                  iconSize: 50.0,
                  onPressed:(){Navigator.of(context).pushNamed("/externalPage");}
                ),
              ],
            )
        )
    );
  }

}

class externalPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Second Page"), backgroundColor: Colors.blue),
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new IconButton(
                        icon: Icon(Icons.home, color: Colors.green),
                        iconSize: 70.0,
                        onPressed: null,
                      ),
                      Text("Second Page")

                    ]
                )
            )
        )

    );
  }
}

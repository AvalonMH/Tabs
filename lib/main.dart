import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;
import './ThirdPage.dart' as third;

void main()
{
  runApp(new MaterialApp(
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/SecondPage": (BuildContext context)=> first.externalPage()
      }
  ));
}


class HomePage extends StatefulWidget{
  @override
  myTabsState  createState()=> myTabsState();
}

class myTabsState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController mytabcontroller;

  @override
  void initState()
  {
    super.initState();
    mytabcontroller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose()
  {
    mytabcontroller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tabs"), backgroundColor: Colors.deepPurpleAccent,
            bottom: TabBar(controller: mytabcontroller,
                tabs: <Tab>[
                  Tab(icon: Text("Tab1")),
                  Tab(icon: Text("Tab2")),
                  Tab(icon: Text("Tab3"))
                ])),
        bottomNavigationBar: Material(
            color: Colors.deepPurpleAccent,
            child: TabBar(controller: mytabcontroller,
                tabs: <Tab>[
                  Tab(text: "tab"),
                  Tab(text: "tab2"),
                  Tab(text:"tab3")
                ]
            )
        ),
        body: TabBarView(

            controller: mytabcontroller,
            children: <Widget>[
              first.HomePage(),
              second.Second(),
              third.Third()
            ]

        )
    );
  }
}

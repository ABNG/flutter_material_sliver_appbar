import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//use this code and do more modification or use https://www.youtube.com/watch?v=I26rzdjqVXA this tutorial code according to requirements.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.email),
              tooltip: "email",
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.close),
                tooltip: "close",
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                tooltip: "add",
              ),
            ],
            expandedHeight: 300.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("welcome"),
              background: Image.network(
                "https://wallpapercave.com/wp/wp3205206.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            //also you can use sliverFillRemaining
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                //use SliverChildListDelegate or SliverChildBuilderDelegate if you get data from model
                return ListTile(
                  title: Text("welcome $index"),
                );
              },
              childCount: 15,
            ),
          )
        ],
      ),
    );
  }
}

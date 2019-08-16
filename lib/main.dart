import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Palette Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = ['assets/1.jpg','assets/2.jpg','assets/3.jpg'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beautiful Nepal'),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.white,
            child: PageView(
              children: images.map((image)=>Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                  ),
                ),
              )).toList(),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Nepal, The 8th Wonder",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0
                  ),),
                  const SizedBox(height: 10.0),
                  Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Id obcaecati tenetur enim et dolore aut dolorum! Fugiat omnis amet atque quos sapiente similique, tempore, vitae eos perferendis cupiditate libero odit.",textAlign: TextAlign.justify,style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

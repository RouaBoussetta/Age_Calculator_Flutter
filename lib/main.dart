import 'package:first_flutter_app/age.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<MyApp> {
  var myController = TextEditingController();
  int str = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => {}, icon: const Icon(Icons.arrow_back)),
          title: const Text('Age Calculator'),
        ),
        // ignore: avoid_unnecessary_containers
        body: Center(
          child: SingleChildScrollView(
              child: Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                width: 200.0,
                margin: const EdgeInsets.all(12),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Type your birth year",
                  ),
                  keyboardType: TextInputType.number,
                  controller: myController,
                ),
              ),

              // ignore: avoid_unnecessary_containers
              Container(
                  // ignore: deprecated_member_use

                  child: Text("Your Age is $str Years Old")),
              // ignore: avoid_unnecessary_containers
              Container(
                margin: const EdgeInsets.all(12),

                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: const Text("Get Age", style: TextStyle(fontSize: 20)),
                  
                  onPressed: () => setState(() {
                    AgeCalculator(int.parse(myController.text));
                    str = AgeCalculator.age;
                  }),
                  color:Colors.grey ,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

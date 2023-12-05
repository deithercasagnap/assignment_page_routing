 import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFirstPage()
    );
  }
}

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  
  TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text("First Page ni Casagnap")
      ),
      
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextFormField(
            controller: fullNameController,
            decoration: const InputDecoration(
              labelText: "Full Name"
            )
          
          ),
          
          const SizedBox(height: 50),
          
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => MySecondPage(name: fullNameController.text)
              )
             );
            },
            child: const Text("Pass the Value to the Second Page",
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontStyle: FontStyle.italic,
                               fontSize: 18,
                               color: Colors.red
                             ),
                             )
          )
        ]
      
      )
    );
  }
}



class MySecondPage extends StatelessWidget {
  
  String? name;
  
  MySecondPage({this.name});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text("Second Page ni Casagnap")
      ),
      
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Text(
            "Hi $name !! Welcome to Second Page ni Casagnap",
              style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontStyle: FontStyle.italic,
                               fontSize: 18,
                               color: Colors.blue
                             ),
            ),
          ),
          
          const SizedBox(height: 50),
          
          ElevatedButton(
            onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => MyFirstPage()
              )
             );
            },
            child: const Text("Bumalik sa First Page",
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontStyle: FontStyle.italic,
                               fontSize: 18,
                               color: Colors.red
                             ),
                             )
          )
        ]
      
      )
    );
  }
}

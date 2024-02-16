import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
    home:myapp()
  ));
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();
  int? result=0,num1=0,num2=0;
  add(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      result =num1! + num2!;

    });
  }
  sub(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      result =num1! - num2!;

    });
  }
  mul(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      result =num1! * num2!;

    });
  }
  div(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      result =num1! ~/ num2!;

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            SizedBox(height: 150.0),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                labelText: 'enter the first number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                labelText: 'enter the second number',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text('Result :$result',
              style: TextStyle(
                fontSize: 20.0,fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  add();
                  controller1.clear();
                  controller2.clear();
                }, child: Text('ADD')),
                ElevatedButton(onPressed: () {
                  sub();
                  controller1.clear();
                  controller2.clear();
                }, child: Text('SUB')),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  mul();
                  controller1.clear();
                  controller2.clear();
                }, child: Text('MUL')),
                ElevatedButton(onPressed: () {

                  div();
                  controller1.clear();
                  controller2.clear();
                }, child: Text('DIV')),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

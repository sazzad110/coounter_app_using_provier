import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> numbers = [1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            numbers.add(numbers.last+1);
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: Text("Counter App")),
      body: SizedBox(
        child: Column(
          children: [
            Text(numbers.last.toString(),
            style: TextStyle(fontSize: 30),),
            Expanded(
              child: ListView.builder(
                itemCount: numbers.length,
                itemBuilder: (context, index){
                  return  Text(
                    numbers[index].toString(),style: TextStyle(fontSize: 30),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  final List<int>numbers;
  const Second({super.key,required this.numbers});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            widget.numbers.add(widget.numbers.last+1);
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: Text("Counter App")),
      body: SizedBox(
        child: Column(
          children: [
            Text(widget.numbers.last.toString(),
            style: TextStyle(fontSize: 30),),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.numbers.length,
                itemBuilder: (context, index){
                  return  Text(
                    widget.numbers[index].toString()+",",style: TextStyle(fontSize: 30),
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
import 'package:coounter_app_using_provier/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (context,numbersProvierModel,child) =>  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          numbersProvierModel.add();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(title: Text("second page")),
      body: SizedBox(
          child: Column(
            children: [
              Text(
                numbersProvierModel.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numbersProvierModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbersProvierModel.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Second()));
                },
                child: Text("Next Page"),
              )
            ],
          ),
      ),
        ),
    );
  }
}
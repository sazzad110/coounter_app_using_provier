import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coounter_app_using_provier/list_provider.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numbersProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text(
            "Second Page",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue, // You can customize the color
          elevation: 0, // No shadow
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SizedBox(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    numbersProviderModel.numbers.last.toString(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: ListView.builder(
                      itemCount: numbersProviderModel.numbers.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: Card(
                            color: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 3,
                            child: ListTile(
                              title: Text(
                                numbersProviderModel.numbers[index].toString(),
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.of(context).push(
                //       MaterialPageRoute(builder: (context) => const Second()),
                //     );
                //   },
                //   child: Text("Next Page"),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

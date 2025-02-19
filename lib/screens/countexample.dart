import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/count_providor.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvidor = Provider.of<CountProvidor>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Consumer<CountProvidor>(builder: (context, value, child) {
            return Text(
              value.count.toString(),
              style: TextStyle(fontSize: 50),
            );
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvidor.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/example_one_providor.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  //double value = 1.0;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleOneProvidor>(context, listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("STATE-MANAGEMENT"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Consumer<ExampleOneProvidor>(builder: (context, value, child) {
            return Slider(
                min: 0,
                max: 1,
                value: provider.value,
                onChanged: (val) {
                  provider.setValue(val);
                });
          }),
          Consumer<ExampleOneProvidor>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(provider.value)),
                    child: Center(
                      child: Text("one"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(provider.value)),
                    child: Center(
                      child: Text("one"),
                    ),
                  ),
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}

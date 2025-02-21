import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/favourite_provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    // final favouriteProvider = Provider.of<FavouriteItem>(context);

    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Consumer<FavouriteItem>(
                        builder: (context, value, child) {
                      return ListTile(
                        onTap: () {
                          if (value.selectedItem.contains(index)) {
                            value.addItem(index);
                          } else {
                            value.removeItem(index);
                          }
                          setState(() {});
                        },
                        title: Text('item' + index.toString()),
                        trailing: Icon(value.selectedItem.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined),
                      );
                    });
                  }))
        ],
      ),
    );
  }
}

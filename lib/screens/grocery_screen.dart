import 'package:flutter/material.dart';
import 'package:fooderlich/screens/emtpy_grocery_screen.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';
import 'grocery_item_screen.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 5
    return Scaffold(
      // 6
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final manager = Provider.of<GroceryManager>(context, listen: false);
// 2
          Navigator.push(
            context,
            // 3
            MaterialPageRoute(
              // 4
              builder: (context) => GroceryItemScreen(
                // 5
                onCreate: (item) {
                  manager.addItem(item);
                  // 7
                  Navigator.pop(context);
                },
                // 8
                onUpdate: (item) {},
              ),
            ),
          );
        },
      ),
      // 7
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(
      builder: (context, manager, child) {
        if (manager.groceryItems.isNotEmpty) {
          //add grocery list screen
          return Container();
        } else {
          return EmptyGroceryScreen();
        }
      },
    );
  }
}

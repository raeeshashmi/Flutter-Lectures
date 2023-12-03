import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  List friendList = ["Bilal", "Taber", "Owais", "Ali"];
  TextEditingController friendListController = TextEditingController();

  addItem() {
    setState(() {
      friendList.add(friendListController.text);
      friendListController.clear();
    });
  }

  removeItem({index}) {
    setState(() {
      friendList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: friendListController,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              addItem();
            },
            child: const Text('Add Item'),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: friendList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 2),
            child: ListTile(
              tileColor: Colors.grey,
              title: Text(friendList[index]),
              trailing: IconButton(
                onPressed: () {
                  removeItem(index: index);
                },
                icon: const Icon(Icons.delete),
              ),
            ),
          );
        },
      ),
    );
  }
}

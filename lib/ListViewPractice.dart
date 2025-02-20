import 'package:flutter/material.dart';

class ListViewPractice extends StatelessWidget {
  const ListViewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    var names = [
      "Rameez",
      "Rameez1",
      "Rameez2",
      "Rameez3",
      "Rameez4",
      "Rameez5"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Item List View"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ItemCategory(name: "Rameez", age: "10");
      },
      itemCount: 50),
    );
    // List view seperator
    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text("List View"),
    //     ),
    //     body: ListView.separated(
    //       itemBuilder: (context, index) {
    //         return Padding(
    //             padding: EdgeInsets.all(10),
    //             child: Text(
    //               names[index],
    //               style: const TextStyle(
    //                   fontSize: 22, fontWeight: FontWeight.bold),
    //             ));
    //       },
    //       itemCount: names.length,
    //       scrollDirection: Axis.vertical,
    //       separatorBuilder: (BuildContext context, int index) {
    //         return const Padding(
    //             padding: EdgeInsets.all(10),
    //             child: Divider(
    //               height: 2,
    //             ));
    //       },
    //     ));
  }
}

class ItemCategory extends StatelessWidget {
  final String name, age;
  const ItemCategory({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
        Text("My Age: $age")
      ],
    );
  }
}

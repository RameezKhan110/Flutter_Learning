import 'package:flutter/material.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var categories = [
      const CategoryModel(categoryName: "Electronics",
          totalProducts: 150,
          totalInventory: 1200),
      const CategoryModel(
          categoryName: "Clothing", totalProducts: 300, totalInventory: 5000),
      const CategoryModel(
          categoryName: "Groceries", totalProducts: 200, totalInventory: 3000),
      const CategoryModel(
          categoryName: "Furniture", totalProducts: 80, totalInventory: 400),
      const CategoryModel(
          categoryName: "Toys", totalProducts: 120, totalInventory: 800),
      const CategoryModel(
          categoryName: "Books", totalProducts: 500, totalInventory: 2000),
      const CategoryModel(
          categoryName: "Books", totalProducts: 500, totalInventory: 2000),
      const CategoryModel(
          categoryName: "Books", totalProducts: 500, totalInventory: 2000),
      const CategoryModel(
          categoryName: "Books", totalProducts: 500, totalInventory: 2000),
      const CategoryModel(
          categoryName: "Books", totalProducts: 500, totalInventory: 2000),
      const CategoryModel(
          categoryName: "Books", totalProducts: 500, totalInventory: 2000),
      const CategoryModel(
          categoryName: "Books", totalProducts: 500, totalInventory: 2000),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.separated(itemBuilder: (context, index) {
          return ItemCategoryList(categoryName: categories[index].categoryName,
              totalProducts: categories[index].totalProducts,
              totalInventory: categories[index].totalInventory);
        }, itemCount: categories.length, separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10);
        },),
      )
    );

  }
}

class ItemCategoryList extends StatelessWidget {
  final String categoryName;
  final int totalProducts;
  final int totalInventory;

  const ItemCategoryList({super.key,
    required this.categoryName,
    required this.totalProducts,
    required this.totalInventory});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        color: Colors.white,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    // Allows text to take available space but not overflow
                    child: Text(
                      categoryName,
                      softWrap: true,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Adds spacing between text and icon
                  const Icon(Icons.edit),

                  const SizedBox(width: 16),
                  // Adds spacing between text and icon
                  const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text("Total Products",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                        softWrap: true),
                  ),
                  const SizedBox(width: 5),
                  Text("$totalProducts Units",
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      softWrap: true)
                ],
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  const Expanded(
                    child: Text("Total Inventory",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                        softWrap: true),
                  ),
                  const SizedBox(width: 5),
                  Text("Rs. $totalInventory",
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      softWrap: true)
                ],
              )
            ],
          ),
        )
    );
  }
}

class CategoryModel {
  final String categoryName;
  final int totalProducts;
  final int totalInventory;

  const CategoryModel({
    required this.categoryName,
    required this.totalProducts,
    required this.totalInventory,
  });
}

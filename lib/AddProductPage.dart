import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Product Name",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 6),
              CustomTextField(
                  inputType: TextInputType.text,
                  onTextChanged: (value) {},
                  hint: "Enter the product name",
                  prefixIcon: null),
              const SizedBox(height: 16),
              const Text(
                "Product Price",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 6),
              CustomTextField(
                  inputType: TextInputType.text,
                  onTextChanged: (value) {},
                  hint: "Enter the product price",
                  prefixIcon: null),
              const SizedBox(height: 16),
              const Text(
                "Product Quantity",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 6),
              CustomTextField(
                  inputType: TextInputType.text,
                  onTextChanged: (value) {},
                  hint: "Enter the product quantity",
                  prefixIcon: null),
              const SizedBox(height: 16),
              const Text(
                "Product Description",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 6),
              CustomTextField(
                  inputType: TextInputType.text,
                  onTextChanged: (value) {},
                  hint: "Enter the product description",
                  prefixIcon: null),

              const SizedBox(height: 24),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                    },
                    child: Text("Add Product", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextInputType inputType;
  final Function(String) onTextChanged;
  final String hint;
  final IconData? prefixIcon;

  const CustomTextField(
      {super.key,
      required this.inputType,
      required this.onTextChanged,
      required this.hint,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return TextField(
        keyboardType: inputType,
        onChanged: (value) {
          onTextChanged(value);
        },
        controller: controller,
        style: const TextStyle(color: Colors.orange),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.orange)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey)),
            hintText: hint,
            prefixIcon: prefixIcon != null
                ? Icon(prefixIcon, color: Colors.grey)
                : null,
            hintStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 14)));
  }
}

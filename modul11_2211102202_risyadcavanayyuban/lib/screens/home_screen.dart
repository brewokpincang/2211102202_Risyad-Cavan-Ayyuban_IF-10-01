import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart'; // Import intl
import '../models/cart_model.dart';
import '../models/item.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Item> availableItems = [
    Item(id: 1, name: "TRML T200", price: 550000),
    Item(id: 2, name: "TRML T99", price: 450000),
    Item(id: 3, name: "SUX V1", price: 150000),
    Item(id: 4, name: "Creamsie Whimsie V1", price: 140000),
    Item(id: 5, name: "Makna V3 Saltnic", price: 105000),
    Item(id: 6, name: "Coil SuperSonix", price: 75000),
    Item(id: 7, name: "RDA Reload S PRO", price: 1200000),
  ];

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bewok VapeStore"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: availableItems.length,
        itemBuilder: (context, index) {
          final item = availableItems[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text(formatCurrency.format(item.price)), // Format harga
            trailing: ElevatedButton(
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).add(item);
              },
              child: const Text("Tambah"),
            ),
          );
        },
      ),
    );
  }
}
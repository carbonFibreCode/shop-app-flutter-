import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/widgets/providers/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>().cart;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Cart', style: Theme.of(context).textTheme.titleMedium),
        ),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (BuildContext context, int index) {
          final cartItem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartItem['imageUrl'] as String),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Delete Product',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      content: const Text(
                        'Are you sure you want to remove the product',
                      ),
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.of(context).pop();
                        }, child: const Text('No', style: TextStyle(color: Colors.blue),),),
                        TextButton(onPressed: () {
                          Provider.of<CartProvider>(context, listen: false).removeProduct(cartItem);
                          Navigator.of(context).pop();
                        }, child: const Text('Yes', style: TextStyle(color: Colors.red),)),
                      ],
                    );
                  },
                );
              },
            ),
            title: Text(
              cartItem['title'].toString(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text('Size : ${cartItem['size']}'),
          );
        },
      ),
    );
  }
}

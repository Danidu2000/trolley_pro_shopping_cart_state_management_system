import 'package:flutter/material.dart';
import 'package:trolley_pro_shopping_cart_state_management_system/screens/product_details_screen.dart';
import '../repositories/product_repository.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';
import '../utils/loading_state.dart';
import 'cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductRepository _repository = ProductRepository();
  List<Product> _products = [];
  LoadingState _state = LoadingState.initial;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  void _fetchProducts() async {
    setState(() => _state = LoadingState.loading);
    try {
      _products = await _repository.fetchProducts();
      setState(() => _state = LoadingState.loaded);
    } catch (e) {
      setState(() => _state = LoadingState.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_state == LoadingState.loading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (_state == LoadingState.error) {
      return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: const Center(
          child: Text('Failed to load products'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
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
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];
          return ProductItem(
            product: product,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

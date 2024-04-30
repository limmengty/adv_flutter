import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/adv_state_module/screens/product_favorite_screen.dart';
import 'package:flutter_s2_adv/adv_state_module/screens/product_screen.dart';

class ProductMainScreen extends StatefulWidget {
  const ProductMainScreen({super.key});

  @override
  State<ProductMainScreen> createState() => _ProductMainScreenState();
}

class _ProductMainScreenState extends State<ProductMainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ProductScreen(),
          ProductFavoriteScreen(),
          Container(color: Colors.green),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "Home",
          ),
        ],
      ),
    );
  }
}

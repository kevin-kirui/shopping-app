import 'package:flutter/material.dart';
import 'package:shop_app/pages/cart_page.dart';
import 'package:shop_app/widgets/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> pages = [ProductList(), CartPage()];
 
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide:  BorderSide(
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
      ),
    );

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value){
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: '',
      ),
    ],
  ),
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
    );
  }
}
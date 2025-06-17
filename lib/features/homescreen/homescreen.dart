import 'package:deshi_mart/core/appColors.dart' show AppColors;
import 'package:deshi_mart/features/account/account.dart';
import 'package:deshi_mart/features/cart/cart.dart';
import 'package:deshi_mart/features/explore/explore.dart';
import 'package:deshi_mart/features/favourite/favourite.dart';
import 'package:deshi_mart/features/shop/shop.dart';
import 'package:flutter/material.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  final List _body = [Shop(), Explore(), Cart(), Favourite(), Account()];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: Colors.black,

          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          showUnselectedLabels: true,

          currentIndex: _index,

          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined),
              activeIcon: Icon(Icons.storefront),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_search_outlined),
              activeIcon: Icon(Icons.manage_search_sharp),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              activeIcon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded),
              activeIcon: Icon(Icons.favorite),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              activeIcon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

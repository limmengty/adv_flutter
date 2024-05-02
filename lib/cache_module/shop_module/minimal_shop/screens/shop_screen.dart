import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_drawer.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_product_tile.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_title.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/hepers/data_product.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/hepers/language_heper.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/logics/cache_setting_logic.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatefulWidget {
  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final DataProduct data = DataProduct();
    CacheMinimalAppLanguage lang = context.watch<CacheSettingLogic>().cacheLang;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        title: Text(
          lang.appName,
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Theme.of(context).colorScheme.secondary,
            ),
          )
        ],
      ),
      // bottomNavigationBar: Container(
      //   color: Colors.black,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15.0),
      //     child: GNav(
      //       backgroundColor: Colors.black,
      //       color: Colors.white,
      //       activeColor: Colors.white,
      //       tabBackgroundColor: Colors.grey.shade800,
      //       padding: EdgeInsets.all(12),
      //       gap: 8,
      //       tabs: [
      //         GButton(icon: Icons.home, text: 'Home'),
      //         GButton(icon: Icons.favorite_border, text: 'Favorite'),
      //         GButton(icon: Icons.search, text: 'Search'),
      //         GButton(icon: Icons.settings, text: 'Settings'),
      //       ],
      //     ),
      //   ),
      // ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          // shop title
          MyTitle(
            title: lang.mouseTitle,
          ),
          // mouses
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.1,
            width: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(25),
              itemCount: data.mouses.length,
              itemBuilder: (context, index) {
                final mouse = data.mouses[index];
                return MyProductTile(product: mouse);
              },
            ),
          ),
          // shop title
          MyTitle(
            title: lang.laptopTitle,
          ),
          // laptops
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.2,
            width: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(25),
              itemCount: data.laptops.length,
              itemBuilder: (context, index) {
                final laptop = data.laptops[index];
                return MyProductTile(product: laptop);
              },
            ),
          ),
          // keyboard
          MyTitle(
            title: lang.keyboardTitle,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.2,
            width: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(25),
              itemCount: data.keyboards.length,
              itemBuilder: (context, index) {
                final keyboard = data.keyboards[index];
                return MyProductTile(product: keyboard);
              },
            ),
          ),
        ],
      ),
    );
  }
}

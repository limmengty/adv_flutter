import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_button.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_list_cart.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_result.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/hepers/language_heper.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/logics/cache_setting_logic.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/models/product.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
// remove to cart button presse
  void removeCart(BuildContext context, Product product, String removeItems,
      String cancel, String ok) {
    // show a dailog box to ask user to confirm to add to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(removeItems),
        actions: [
          // cancel buton
          MyButton(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(cancel),
          ),
          // yes buton
          MyButton(
            onTap: () {
              Navigator.pop(context);

              // add to cart
              context.read<CacheSettingLogic>().removeFromCart(product);
            },
            child: Text(ok),
          ),
        ],
      ),
    );
  }

// user pressed pay button
  void payButtonPressed(BuildContext context, String payment) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          MyButton(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Text(
                  payment,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // get access to the cart
    final cart = context.watch<CacheSettingLogic>().cart;
    // final totalPrice = context.watch<CacheSettingLogic>().totalPrice;
    double totalPrice = 0.0;
    cart.forEach((e) {
      totalPrice += e.price;
    });
    CacheMinimalAppLanguage lang = context.watch<CacheSettingLogic>().cacheLang;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);

            Navigator.pushNamedAndRemoveUntil(
              context,
              '/shop_page',
              (route) => false,
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        title: Text(
          lang.drawerAddToBag,
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // cart list
            Expanded(
              child: cart.isEmpty
                  ? cartMessage(context, lang.noItems)
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        // get individual item in cart
                        final item = cart[index];

                        // return as a cart tile UI
                        return MyListCart(
                          title: item.name,
                          price: item.price.toString(),
                          image: item.imagePath,
                          child: GestureDetector(
                            onTap: () {
                              removeCart(context, item, lang.removeItems,
                                  lang.cancel, lang.ok);
                            },
                            child: Icon(
                              Icons.delete,
                              size: 25,
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        );
                      },
                    ),
            ),

            cart.isEmpty
                ? const SizedBox()
                : MyResult(
                    totalPrice: totalPrice,
                  ),
            // pay button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                cart.isEmpty
                    ? const SizedBox()
                    : MyButton(
                        onTap: () {
                          payButtonPressed(context, lang.payment);
                        },
                        child: Text(
                          lang.payNow,
                          style: TextStyle(
                            fontSize: 19,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cartMessage(BuildContext context, String message) {
    return Center(
      child: MyButton(
          onTap: () {
            Navigator.pop(context);

            Navigator.pushNamedAndRemoveUntil(
                context, '/shop_page', (route) => false);
          },
          child: Text(
            message,
            style: TextStyle(
              fontSize: 21,
              color: Theme.of(context).colorScheme.error,
            ),
          )),
    );
  }
}

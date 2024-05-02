import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_button.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/hepers/language_heper.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/logics/cache_setting_logic.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/models/product.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  // add to cart button presse
  void addToCart(
      BuildContext context, String addItems, String ok, String cancel) {
    // show a dailog box to ask user to confirm to add to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(addItems),
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
              context.read<CacheSettingLogic>().addToCart(product);
            },
            child: Text(ok),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    CacheMinimalAppLanguage lang = context.watch<CacheSettingLogic>().cacheLang;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 5,
          color: Theme.of(context).colorScheme.primary
        )
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // product image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(
                      product.imagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // product name
              Text(
                product.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.primary),
              ),

              const SizedBox(
                height: 10,
              ),
              // product description
              Text(
                product.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          // product price + add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ " + product.price.toStringAsFixed(2),
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              // add to cart button
              MyButton(
                onTap: () {
                  addToCart(context, lang.addItems, lang.ok, lang.cancel,);
                },
                child: const Icon(
                  Icons.add,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

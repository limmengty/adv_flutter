import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/adv_state_module/logics/product_logic.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Icon> items = [Icon(Icons.check_box_outline_blank)];

  final List<String> itemName = [
    'all',
    'none',
  ];

  String? selectedValue;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Screen"),
      ),
      body: _buildBody(ProductModel()),
    );
  }

  Widget _buildBody(ProductModel item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 2,
        ),
        SizedBox(height: 30, child: _buildDropDown(item)),
        SizedBox(
          height: 600,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return _buildItem(productList[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDropDown(ProductModel item) {
    bool isSelect = context.watch<ProductLogic>().isSelect(item);

    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: const Row(
          children: [
            Icon(
              Icons.check_box_outline_blank,
              size: 16,
              color: Colors.black,
            ),
            SizedBox(
              width: 4,
            ),
          ],
        ),
        items: itemName
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  // child: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          setState(() {
            selectedValue = value;
            if (value == "all") {
              context.read<ProductLogic>().selectAllProduct(item);
            } else {
              context.read<ProductLogic>().removeAllProduct(item);
            }
          });
        },
        buttonStyleData: ButtonStyleData(
          height: 20,
          width: 90,
          padding: const EdgeInsets.only(left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Colors.pink,
          ),
          elevation: 2,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 100,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.pink,
          ),
          offset: const Offset(-20, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          // padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }

  Widget _buildItem(ProductModel item) {
    bool isFavorite = context.watch<ProductLogic>().isFavorite(item);
    bool isSelect = context.watch<ProductLogic>().isSelect(item);

    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: DrawerMotion(),
        children: [
          SlidableAction(
            flex: 1,
            onPressed: (ctx) {
              if (isFavorite) {
                context.read<ProductLogic>().removeFromFavorite(item);
              } else {
                context.read<ProductLogic>().addToFavorite(item);
              }
            },
            backgroundColor: isFavorite ? Colors.purple : Colors.pink,
            foregroundColor: Colors.white,
            icon: Icons.favorite,
            label: isFavorite ? "Unfavorite" : "Favorite",
          )
        ],
      ),
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: IconButton(
                onPressed: () {
                  if (isFavorite == false) {
                    context.read<ProductLogic>().addToFavorite(item);
                  }
                },
                icon: isFavorite
                    ? Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )
                    : Icon(Icons.favorite_border),
              ),
              title: Text("${item.name}"),
              subtitle: Text("USD ${item.price} ${item.qty} items \nin stock"),
              trailing: IconButton(
                onPressed: () {
                  if (isSelect) {
                    context.read<ProductLogic>().removeSelectProduct(item);
                  } else {
                    context.read<ProductLogic>().selectProduct(item);
                  }
                },
                icon: isSelect
                    ? Icon(
                        Icons.check_box,
                        color: Colors.blue,
                      )
                    : Icon(Icons.check_box_outline_blank),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

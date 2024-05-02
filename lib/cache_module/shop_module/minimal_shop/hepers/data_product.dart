import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/models/keyboard.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/models/laptop.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/models/mouse.dart';

class DataProduct {
  // product for sale
  final List<Mouse> _mouses = [
    Mouse(
        name: "Razer Basilisk V3",
        price: 44,
        description:
            "Fastest Gaming Mouse Switch - Chroma RGB Lighting - 26K DPI Optical Sensor -Classic Black",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/mouses/RazerBasiliskV3.jpg"),
    Mouse(
        name: "Razer Viper V3 Pro ",
        price: 159.99,
        description:
            "Symmetrical - 55g Lightweight - 8K Polling - 35K DPI Optical Sensor - Gen3 Optical Switches - 8 Programmable Controls - 95 Hr Battery - White",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/mouses/RazerViperV3Pro.jpg"),
    Mouse(
        name: "Rapoo MT750S Wireless",
        price: 45.00,
        description: "Rapoo MT750S Wireless & Bluetooth Mouse Supported OS",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/mouses/Logitech-MX-Master-3S-330x409.jpg"),
    Mouse(
        name: "Razer Lancehead Tournament",
        price: 59.99,
        description: "High Precision 16,000 DPI Optical Sensor",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/mouses/RazerLanceheadTournamentEditionGamingMouse.jpg"),
    Mouse(
        name: "RAZER COBRA",
        price: 35.99,
        description: "Right-handed Symmetrical, Wired - Razer™ Speedflex Cable",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/mouses/RazerCobraCustomizableGamingMouse.jpg"),
  ];

  final List<Laptop> _lapTops = [
    // computer

    Laptop(
        name: "Razer Blade 14",
        price: 2139.00,
        description:
            "R9 5900HX / 16GB / SSD 1TB PCIE / RTX3060 6GB / 14' FHD,144HZ",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/laptops/RazerBlade14.jpg"),
    Laptop(
        name: "Razer Viper V3 Pro ",
        price: 3239.00,
        description:
            "R9 5900HX / 16GB / SSD 1TB PCIE / RTX3080 8GB / 14' QHD,165HZ",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/laptops/RazerBlade15.jpg"),
    Laptop(
        name: "ASUS ROG STRIX G15 ",
        price: 949.00,
        description:
            "R7 6800HS / 8GB / SSD 512GB PCIE / RTX3050 4GB / 15.6' FHD,144HZ",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/laptops/ROG-513RC-Grey-330x409.jpg"),
    Laptop(
        name: "ASUS ROG STRIX G18",
        price: 1449.00,
        description:
            "I7 13650HX / 16GB / SSD 512GB PCIE / RTX4050 6GB / 18' QHD+,240HZ",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/laptops/Asus ROG Strix G18 G814JU-N6128W.jpg"),
    Laptop(
        name: "ASUS ROG ZEPHYRUS G14 ",
        price: 1799.00,
        description:
            "R9 7940HS / 16GB / SSD 1TB PCIE / RTX4060 8GB / 14\"QHD,165HZ",
        imagePath:
            "lib/cache_module/shop_module/minimal_shop/assets/laptops/ASUS ROG Zephyrus G14 GA402XV-N2060W.jpg"),
  ];

  final List<Keyboard> _keyboards = [
    Keyboard(
      name: "ASUS ROG FALCHION",
      price: 95.99,
      description: "WIRELESS MECHANICAL WITH 68 KEYS / RGB AURA SYN ",
      imagePath:
          "lib/cache_module/shop_module/minimal_shop/assets/keyboards/ASUS-ROG-FALCHION.jpg",
    ),    
    Keyboard(
      name: "KEYCHRON K10",
      price: 105.00,
      description: "Number of Keys: 104 keys (*Num Lock works with Windows OS only), Switch: Gateron G Pro Red, Brown ",
      imagePath:
          "lib/cache_module/shop_module/minimal_shop/assets/keyboards/Keychron-K10-330x409.jpg",
    ),    
    Keyboard(
      name: "LOGITECH G PRO ",
      price: 125.00,
      description: "Pro-inspired tenkeyless design, GX Blue clicky mechanical switches",
      imagePath:
          "lib/cache_module/shop_module/minimal_shop/assets/keyboards/Logitech-G-PRO.jpg",
    ),  
    Keyboard(
      name: "Razer Blackwidow  ",
      price: 169.00,
      description: "Available switch type(s):Razer Green, Orange and Yellow Switches",
      imagePath:
          "lib/cache_module/shop_module/minimal_shop/assets/keyboards/RAZER-Blackwidow-Elite-330x409.jpg",
    ),    
    Keyboard(
      name: "RAZER HUNTSMAN",
      price: 209.00,
      description: "At a glance: New Razer Opto-Mechanical Switch™ – Light and ClickyKey stabilizer bar for precise",
      imagePath:
          "lib/cache_module/shop_module/minimal_shop/assets/keyboards/RAZER HUNTSMAN ELITE-330x409.jpg",
    ),
  ];
  // get product list
  List<Mouse> get mouses => _mouses; // get product list
  List<Laptop> get laptops => _lapTops;
  List<Keyboard> get keyboards => _keyboards;
}

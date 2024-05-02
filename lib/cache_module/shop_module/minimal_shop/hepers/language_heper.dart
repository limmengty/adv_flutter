List<CacheMinimalAppLanguage> cacheMinimalAppLanguageList = [
  CacheMinimalAppLanguage(),
  CacheMinimalAppKhmer(),
  CacheMinimalAppThai(),
  CacheMinimalAppVietnam(),
];

class CacheMinimalAppLanguage {
  String get appName => "Mengty Computer Shop";
  String get settings => "Settings";
  String get drawerProduct => "Product";
  String get drawerAddToBag => "Add To Bag";
  String get drawerExit => "Exit";
  String get payNow => "Pay Now";
  String get noItems => "No Items In Bag Cart !";
  String get total => "Total : ";
  String get premiumPro => "Premium Quality Products";
  String get mouseTitle => "Mouses";
  String get keyboardTitle => "Keyboards";
  String get laptopTitle => "Laptops";
  String get lightMode => "Light Mode";
  String get dartMode => "Dart Mode";
  String get systemMode => "System Mode";
  String get changeToEN => "Change To EN";
  String get changeToKH => "Change To KH";
  String get changeToTH => "Change To TH";
  String get changeToVN => "Change To VN";
  String get removeItems => "Remove this item from your cart?";
  String get cancel => "Cancel";
  String get ok => "OK";
  String get addItems => "Add this item to your cart?";
  String get payment => "payment processing";
}

class CacheMinimalAppKhmer implements CacheMinimalAppLanguage {
  @override
  String get appName => "ហាងម៉េងទីកំព្យូទ័រ";
  @override
  String get settings => "ការកំណត់";
  @override
  String get drawerProduct => "ទំនិញ";
  @override
  String get drawerAddToBag => "ដាក់ចូលកន្ត្រក់";
  @override
  String get drawerExit => "ចាកចេញ";
  @override
  String get payNow => "បង់ប្រាក់ឥឡូវនេះ";
  @override
  String get noItems => "មិនមានទំនិញនៅក្នុងកន្ត្រក់ទេ !";
  @override
  String get total => "សរុប : ";
  @override
  String get premiumPro => "ផលិតផលគុណភាពខ្ពស់";
  @override
  String get mouseTitle => "កណ្តុរ";
  @override
  String get keyboardTitle => "ក្តារចុច";
  @override
  String get laptopTitle => "កុំព្យូទ័រយួរដៃ";
  @override
  String get lightMode => "ពន្លឺ";
  @override
  String get dartMode => "ងងឹត";
  @override
  String get systemMode => "ប្រព័ន្ធ";
  @override
  String get changeToEN => "ប្តូរទៅជាភាសាអង់គ្លេស";
  @override
  String get changeToKH => "ប្តូរទៅជាភាសាខ្មែរ";
  @override
  String get changeToTH => "ប្តូរទៅជាភាសាថៃ";
  @override
  String get changeToVN => "ប្តូរទៅជាភាសាវៀតណាម";
  @override
  String get removeItems => "តើអ្នកចង់យកធាតុនេះចេញពីរទេះរបស់អ្នកទេ?";
  @override
  String get cancel => "បោះបង់";
  @override
  String get ok => "យល់ព្រម";
  @override
  String get addItems => "បញ្ចូលធាតុនេះទៅក្នុងរទេះរបស់អ្នក?";
  @override
  String get payment => "ដំណើរការទូទាត់";
}

class CacheMinimalAppThai implements CacheMinimalAppLanguage {
  @override
  String get appName => "ร้านเม่งตี้คอมพิวเตอร์";
  @override
  String get settings => "การตั้งค่า";
  @override
  String get drawerProduct => "สินค้า";
  @override
  String get drawerAddToBag => "เพิ่มลงถุง";
  @override
  String get drawerExit => "ออก";
  @override
  String get payNow => "จ่ายตอนนี้";
  @override
  String get noItems => "ไม่มีสินค้าในรถเข็น !";
  @override
  String get total => "ทั้งหมด : ";
  @override
  String get premiumPro => "สินค้าคุณภาพพรีเมี่ยม";
  @override
  String get mouseTitle => "หนู";
  @override
  String get keyboardTitle => "คีย์บอร์ด";
  @override
  String get laptopTitle => "แล็ปท็อป";
  @override
  String get lightMode => "โหมดแสง";
  @override
  String get dartMode => "โหมดมืด";
  @override
  String get systemMode => "โหมดระบบ";
  @override
  String get changeToEN => "เปลี่ยนเป็นภาษาอังกฤษ";
  @override
  String get changeToKH => "เปลี่ยนเป็นเขมร";
  @override
  String get changeToTH => "เปลี่ยนเป็นภาษาไทย";
  @override
  String get changeToVN => "เปลี่ยนเป็นเวียดนาม";
  @override
  String get removeItems => "คุณต้องการลบสินค้านี้ออกจากรถเข็นของคุณหรือไม่?";
  @override
  String get cancel => "ยกเลิก";
  @override
  String get ok => "ตกลง";
  @override
  String get addItems => "เพิ่มรายการนี้ไปยังรถเข็นของคุณ?";
  @override
  String get payment => "การประมวลผลการชำระเงิน";
}

class CacheMinimalAppVietnam extends CacheMinimalAppLanguage {
  @override
  String get appName => "Cửa hàng máy tính Mạnhty";
  @override
  String get settings => "Cài đặt";
  @override
  String get drawerProduct => "Sản phẩm";
  @override
  String get drawerAddToBag => "Thêm vào túi";
  @override
  String get drawerExit => "Lối ra";
  @override
  String get payNow => "thanh toán ngay";
  @override
  String get noItems => "Không có mặt hàng nào trong giỏ hàng!";
  @override
  String get total => "tổng cộng : ";
  @override
  String get premiumPro => "Sản phẩm chất lượng cao cấp";
  @override
  String get mouseTitle => "những con chuột";
  @override
  String get keyboardTitle => "những bàn phím";
  @override
  String get laptopTitle => "máy tính xách tay";
  @override
  String get lightMode => "Chế độ sáng";
  @override
  String get dartMode => "Chế độ tối";
  @override
  String get systemMode => "Chế độ hệ thống";
  @override
  String get changeToEN => "Thay đổi sang tiếng Anh";
  @override
  String get changeToKH => "Đổi sang tiếng khmer";
  @override
  String get changeToTH => "Đổi sang tiếng Thái";
  @override
  String get changeToVN => "Đổi sang Việt Nam";
  @override
  String get removeItems =>
      "Bạn có muốn xóa mặt hàng này khỏi giỏ hàng của mình không?";
  @override
  String get cancel => "Hủy bỏ";
  @override
  String get ok => "Được rồi";
  @override
  String get addItems => "Thêm mặt hàng này vào giỏ hàng của bạn?";
  @override
  String get payment => "xử lý thanh toán";
}

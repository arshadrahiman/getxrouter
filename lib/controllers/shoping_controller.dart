import 'package:get/get.dart';
import 'package:getx_routing/models/product_models.dart';

class ShopingController extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    FetchData();
  }

  FetchData() async {
    await Future.delayed(const Duration(seconds: 1));
    var productsResult = [
      Product(
          id: 1,
          price: 67,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'one'),
      Product(
          id: 2,
          price: 45,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'two'),
      Product(
          id: 3,
          price: 78.5,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'three'),
      Product(
          id: 2,
          price: 67,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'four'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'five'),
      Product(
          id: 2,
          price: 23,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'six'),
      Product(
          id: 3,
          price: 65.5,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'seven'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'eight'),
      Product(
          id: 3,
          price: 53.5,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'nine'),
      Product(
          id: 3,
          price: 43.5,
          productDescription: 'some description about product',
          productImage:
              'https://www.subhe.com/blog/wp-content/uploads/2019/10/Ecommerce-Photo-Editing.jpg',
          productName: 'ten'),
    ];

    products.value = productsResult;
  }
}

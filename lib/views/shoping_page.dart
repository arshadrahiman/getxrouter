import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing/controllers/cart_controller.dart';
import 'package:getx_routing/controllers/shoping_controller.dart';

class ShopingPage extends StatelessWidget {
  final shopingController = Get.put(ShopingController());
  final cartControler = Get.put(CartControler());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 176, 174),
        body: Column(
          children: [
            Expanded(
              child: GetX<ShopingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        controller.products[index].productImage,
                                        height: 100.0,
                                        width: 100.0,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        controller.products[index].productName,
                                        style: const TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                        controller
                                            .products[index].productDescription,
                                      ),
                                    ],
                                  ),
                                  Text('\$${controller.products[index].price}',
                                      style: const TextStyle(fontSize: 24)),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  cartControler
                                      .addTocart(controller.products[index]);
                                },
                                child: const Text('Add to Cart'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            GetX<CartControler>(
              builder: (controller) {
                return Text(
                  'Total Amount:\$${controller.totalPrice} ',
                  style: const TextStyle(fontSize: 32, color: Colors.white),
                );
              },
            ),
            ElevatedButton(
                onPressed: () => Get.toNamed('/'),
                child: Text('splash screen')),
            const SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  backgroundColor: Colors.amber,
                  icon: const Icon(
                    Icons.add_shopping_cart_rounded,
                    color: Colors.black,
                  ),
                  label: GetX<CartControler>(
                    builder: (controller) {
                      return Text(
                        '${controller.count}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

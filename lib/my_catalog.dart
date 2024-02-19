import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_states/cart_model.dart';
import 'package:study_states/counter_model.dart';
import 'package:study_states/my_app_bar.dart';
import 'package:get/get.dart';

class MyCatalog extends StatelessWidget {
  const MyCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final CartModel cartModel = Get.put(CartModel());

    return Scaffold(
      appBar: MyAppBar(
        titleTxt: "Catálogo",
        callback: (){
          Navigator.pushNamed(context, '/cart');
        },),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() =>
            ListView.separated(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(cartModel.items[index].name),
                ),
                separatorBuilder: (context, index) => const Divider(height: 1,),
                itemCount: cartModel.items.length
            )
        ),
      )
    );
  }
}

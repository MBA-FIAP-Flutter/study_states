import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_states/cart_model.dart';
import 'package:study_states/item.dart';
import 'package:study_states/my_app_bar.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final CartModel cartModel = Get.find<CartModel>();

    return Scaffold(
      appBar: MyAppBar(
        titleTxt: "Carrinho",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text("Custo atual: ${cartModel.totalPrice}"),
              ),
              TextFormField (
                controller: _controller,
              ),
              SizedBox(height: 12,),
              ElevatedButton(
                  onPressed: (){
                    cartModel.add(
                        Item(name: _controller.text)
                    );
                    _controller.clear();
                  },
                  child: const Text("Inserir")
              )
            ],
          ),
        ),
      )
    );
  }
}

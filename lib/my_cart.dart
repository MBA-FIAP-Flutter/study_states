import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_states/cart_model.dart';
import 'package:study_states/item.dart';
import 'package:study_states/my_app_bar.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          titleTxt: "Carrinho",
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              BlocBuilder<CartModel, List<Item>>(
                builder: (context, itens) =>
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Text("Custo atual: ${context.read<CartModel>().totalPrice}"),
                    ),
              ),
              TextFormField (
                controller: _controller,
              ),
              const SizedBox(height: 12,),
              ElevatedButton(
                  onPressed: (){
                    context.read<CartModel>().add(
                        Item(name: _controller.text)
                    );
                    _controller.clear();
                  },
                  child: const Text("Inserir")
              )
            ],
          ),
        )
    );
  }
}

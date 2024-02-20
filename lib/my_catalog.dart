import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_states/cart_model.dart';
import 'package:study_states/item.dart';
import 'package:study_states/my_app_bar.dart';

class MyCatalog extends StatelessWidget {
  const MyCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleTxt: "Catálogo",
        callback: (){
          Navigator.pushNamed(context, '/cart');
        },),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CartModel, List<Item>>(
          builder: (context, itens) => ListView.separated(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(itens[index].name),
              ),
              separatorBuilder: (context, index) => const Divider(height: 1,),
              itemCount: itens.length
          )
        ),
      )
    );
  }
}

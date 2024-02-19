import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_states/cart_model.dart';
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
        child: Consumer<CartModel>(
          builder: (context, model, child) =>
            ListView.separated(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(model.items[index].name),
                ),
                separatorBuilder: (context, index) => const Divider(height: 1,),
                itemCount: model.items.length
            )
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  final String titleTxt;
  Function? callback;

  MyAppBar({super.key, required this.titleTxt, this.callback}) : super(
    title: Text(titleTxt),
    actions: [
      if (callback != null)
        IconButton(
          onPressed: () {
            callback.call();
          },
          icon: const Icon(Icons.add),
        )

    ]
  );
}

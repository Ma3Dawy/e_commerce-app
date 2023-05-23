import 'package:flutter/material.dart';

class Customlistview {
  static customview(BuildContext context, {required Widget child}) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            child: child
          ),
        )
      ],
    );
  }
}

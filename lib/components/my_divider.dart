import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20,
        end: 20,
      ),
      child: Container(
        height: 1,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[400],
      ),
    );
  }
}

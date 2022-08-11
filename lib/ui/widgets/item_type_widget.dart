import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {

  String texto;
  Color? color;

  ItemTypeWidget({required this.texto, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4.0,right: 12.0,top: 4.0),
      decoration: BoxDecoration(
          color: color != null ? color:Colors.white.withOpacity(0.27),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              offset: const Offset(4, 4),
              blurRadius: 12.0,
            )
          ]),
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 4.0),
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

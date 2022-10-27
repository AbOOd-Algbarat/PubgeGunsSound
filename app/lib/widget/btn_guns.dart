import 'package:flutter/material.dart';

//---------------خواص الازرار---------------//

class GunsBttn extends StatelessWidget {
  const GunsBttn({
    super.key,
    required this.icon,
    required this.name,
    this.color = Colors.red,
    required this.onClickBtn,
  });

  final String name;
  final Color color;
  final String icon;
  final void Function() onClickBtn;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: ElevatedButton.icon(
          onPressed: onClickBtn,
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(7),
              alignment: Alignment.bottomLeft),
          icon: Image(image: AssetImage(icon), width: 34),
          label: Text(name),
        ),
      ),
    );
  }
}

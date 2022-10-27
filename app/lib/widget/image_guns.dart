import 'package:flutter/material.dart';

//---------------------التحكم في حواف الصور-------------//

class GunsImages extends StatelessWidget {
  const GunsImages({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

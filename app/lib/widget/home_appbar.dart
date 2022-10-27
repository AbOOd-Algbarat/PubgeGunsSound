import 'package:app/constant/fonts.dart';
import 'package:app/constant/name_guns.dart';
import 'package:flutter/material.dart';

//-------------------للصفحة الرئيسية--------------------------//

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black45,
      title: Text(
        NameGuns.gunssound.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontFamily: fSansPro,
          fontSize: 35,
        ),
      ),
      leading: const Icon(
        Icons.gamepad,
        size: 37,
        color: Colors.black,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

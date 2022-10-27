import 'package:app/constant/name_guns.dart';
import 'package:app/constant/path_audio.dart';
import 'package:app/constant/path_icons.dart';
import 'package:app/constant/path_images.dart';
import 'package:app/widget/btn_guns.dart';
import 'package:flutter/material.dart';

//---------------  استدعاء الازرار وخلفية الازرار-------------------//

class GunsBuildBtn extends StatelessWidget {
  const GunsBuildBtn({super.key, required this.callBack});
  final void Function(String, String) callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  GunsBttn(
                    name: NameGuns.akm,
                    icon: PathIcons.akm,
                    onClickBtn: () => callBack(PathImages.akm, PathAudio.akm),
                  ),
                  GunsBttn(
                    name: NameGuns.m4,
                    icon: PathIcons.m4,
                    onClickBtn: () => callBack(PathImages.m4, PathAudio.m4),
                  ),
                  GunsBttn(
                    name: NameGuns.awm,
                    icon: PathIcons.awm,
                    onClickBtn: () => callBack(PathImages.awm, PathAudio.awm),
                  ),
                  GunsBttn(
                    name: NameGuns.kar,
                    icon: PathIcons.kar,
                    onClickBtn: () => callBack(PathImages.kar, PathAudio.kar),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*Expanded(
        child: Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              GunsBttn(
                name: NameGuns.akm,
                onClickBtn: () => callBack(PathImages.akm, PathAudio.akm),
                icon: 'Icon(Icons.abc_outlined)',
              ),
              GunsBttn(
                name: NameGuns.awm,
                onClickBtn: () => callBack(PathImages.awm, PathAudio.awm),
                icon: 'Icon(Icons.abc_outlined)',
              ),
              GunsBttn(
                name: NameGuns.kar,
                onClickBtn: () => callBack(PathImages.kar, PathAudio.kar),
                icon: 'Icon(Icons.abc_outlined)',
              ),
              GunsBttn(
                name: NameGuns.m4,
                onClickBtn: () => callBack(PathImages.m4, PathAudio.m4),
                icon: 'Icon(Icons.abc_outlined)',
              ),
            ],
          ))
        ],
      ),
    ));*/
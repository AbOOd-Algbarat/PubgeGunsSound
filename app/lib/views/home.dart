import 'package:app/constant/path_images.dart';
import 'package:app/widget/build_btn.dart';
import 'package:app/widget/home_appbar.dart';
import 'package:app/widget/image_guns.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

//----------------خواص الصور واستدعاء الاصوات وخواص البوردر-----------//

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  // * default image
  String image = PathImages.pubg;
// * Audio Player
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black87, width: 2),
              borderRadius: BorderRadius.circular(50)),
          child: Column(
            children: [
              //*Image
              GunsImages(image: image),
              //*Line
              const Divider(
                  color: Color.fromARGB(255, 0, 0, 0), thickness: 2, height: 1),
              //*Byttom
              GunsBuildBtn(
                callBack: (String image, String audio) {
                  this.image = image;
                  audioPlayer.setSourceAsset(audio);
                  audioPlayer.resume();
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

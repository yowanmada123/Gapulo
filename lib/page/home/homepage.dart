import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/home/body/home_body_five.dart';
import 'package:gastronomy/page/home/body/home_body_four.dart';
import 'package:gastronomy/page/home/body/home_body_one.dart';
import 'package:gastronomy/page/home/body/home_body_three.dart';
import 'package:gastronomy/page/home/body/home_body_two.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_chatbot.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var c = Get.put(GlobalController());

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.scheduleFrameCallback((timeStamp) async {
      c.selectedIndex.value = 0;
      print(c.selectedIndex.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(),
        body: Stack(children: [
          ListView(children: [
            HomeBodyOne(),
            Divider(),
            HomeBodyTwo(),
            Divider(),
            HomeBodyThree(),
            Divider(),
            HomeBodyFour(),
            Divider(),
            HomeBodyFive(),
            Divider(),
            FootBar(),
          ]),
          CustomChatbot(),
        ])
        // HomeBody(),
        );
  }
}

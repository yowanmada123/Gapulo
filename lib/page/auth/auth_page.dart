import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/auth/login/login_page.dart';
import 'package:gastronomy/page/home/homepage.dart';
import 'package:get/get.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // final c = Get.putlobalController();
  var c = Get.put(GlobalController());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => init());
  }

  init() async {
    //todo load from box;
    await c.initState();
    String? token = await c.getToken();
    if (token == null) {
      Get.offAll(HomePage());
    } else {
      Get.offAll(const LoginPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

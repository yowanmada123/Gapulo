import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../detailpage/gastronomy_detail_page.dart';

class ListGastronomyPage extends StatefulWidget {
  const ListGastronomyPage({super.key});

  @override
  State<ListGastronomyPage> createState() => _ListGastronomyPageState();
}

class _ListGastronomyPageState extends State<ListGastronomyPage> {
  var c = Get.put(GlobalController());
  @override
  void initState() {
    super.initState();
    c.selectedIndex.value = 1;
    print(c.selectedIndex.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                    width: Get.width,
                    height: 400,
                    child: FittedBox(
                      child: Image.asset('assets/images/img_menu_makanan.png'),
                      fit: BoxFit.fill,
                    )),
                Container(
                  width: Get.width,
                  height: 400,
                  color: Colors.black.withOpacity(0.6),
                  child: Center(
                    child: Container(
                      width: 957,
                      height: 131,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Feel a New Experience In Culinary Through',
                          style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: ONetralWhite),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Gastronomy',
                              style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: OPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 82),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Find Wonderful',
                        style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: ONetralBlack),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Culinary',
                            style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: OPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37),
              ListView.builder(physics: const NeverScrollableScrollPhysics(), shrinkWrap: true, itemCount: 8, itemBuilder: (BuildContext context, int index) => ListItem())
            ],
          ),
        ),
        // const CustomAppBar(),
      ]),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 80),
          child: GestureDetector(
            onTap: () {
              Get.to(GastronomyDetailPage());
            },
            child: OnHoverButton(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            width: 427,
                            height: 232,
                            child: FittedBox(
                              child: Image.asset("assets/images/img_recipe_ayam.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Traditional Food").nunito20s().black(),
                                Row(
                                  children: [
                                    Image.asset("assets/images/ic_location_primary.png"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    const Text("Traditional Food").nunito18s().black(),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            const Text("Traditional Food").nunito30b().black(),
                            SizedBox(height: 15),
                            const Text(
                              "Ayam Taliwang adalah makanan yang berasal dari Taliwang, Sumbawa Barat, Nusa Barat Tenggara yang bahan utamanya adalah ayam kampung muda. Ayam kampung muda dibakar dengan bumbu khas Taliwang dan ...",
                              maxLines: 4,
                            ).nunito20s().black(),
                            SizedBox(height: 30),
                            GestureDetector(onTap: () {}, child: const Text("Learn it more...").nunito25s().primary()),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                  // Divider(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

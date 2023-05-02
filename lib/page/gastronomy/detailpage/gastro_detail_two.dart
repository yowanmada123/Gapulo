import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';

class GastroDetailTwo extends StatelessWidget {
  GastroDetailTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Traditional Food").nunito20s().primary(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                  const Text("Ayam Taliwang").orelega50s().black(),
                  SizedBox(height: 15),
                  Container(
                    child: Text(
                      "Kemunculan ayam taliwang sendiri pertama kali pada saat terjadi perang antara Kerajaan Selaparang dan Kerajaan Karangasem Bali. Pada masa itu pasukan Kerajaan Taliwang didatangkan ke Lombok untuk membantu Kerajaan Selaparang yang mendapat serangan dari kerajaan Karangasem Bali. Orang-orang Taliwang yang bertugas sebagai pendamai tersebut ditempatkan di suatu wilayah yang diberi nama Karang Taliwang sesuai dengan tempat mereka. Tugas orang-orang Taliwang ini adalah melakukan pendekatan dengan Raja Karangasem agar pertempuran yang menelan banyak kerugian nyawa dan harta benda tidak berlanjut. Dalam misi perdamaian itu ikut serta para pemuka Agama Islam, juru kuda  dan juru masak. Masing-masing memiliki tugas tersendiri.  Pemuka agama bertugas memberi tuntunan kehidupan kepada masyarakat dan melakukan pendekatan dengan Raja Karangasem. Juru kuda bertugas menjaga dan memilihara kuda. Juru masak bertugas menyiapkan logistik. Sejalan dengan tugas dan misi yang dijalankan, para juru masak dari Kerajaan Taliwang itu melakukan tugasnya dengan baik. Mereka mengolah dan memasak berbagai bahan makanan menjadi santapan para peminpin perang beserta para prajurit. Salah satunya adalah pembuatan ayam bakar dengan campuran bumbu-bumbu tertentu sesuai selera dan tradisi masyarakat bersangkutan. Seiring berjalannya waktu para prajurit pun berbaur dengan masyarakat suku Sasak. Dari sosialisasi tersebut pada akhirnya suku Sasak bisa mencicipi enaknya ayam Taliwang dan mereka saling berbagi ilmu tentang cara pengolahannya dengan memanfaatkan bumbu-bumbu sederhana. Selain itu juga terjadi pembauran yang dominan adalah mengadopsi berbagai bentuk pengetahuan dan tatacara kehidupan sehari-hari. Misalnya pada pola makan dan pengolahan bahan makanan. Dalam hal pola makan dan jenis makanan yang diolah cenderung mengadopsi budaya masyarakat Sasak yang menyukai masakan pedas. Daging ayam diolah menjadi ayam pelalah dengan citarasa pedas. Ayam pelalah inilah yang menjadi cikal bakal dari ayam taliwang.  Bumbu-bumbu yang digunakan berasal dari hasil alam sekitarnya seperti bawang merah, bawang putih, cabai, garam, dan terasi. Pada masa itu hasil olahan ayam merupakan makanan istimewa yang digunakan sebagai hidangan pada saat-saat tertentu dan hanya untuk pemenuhan konsumsi sendiri.",
                      textAlign: TextAlign.justify,
                    ).nunito20s().black(),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("History").orelega40s().black(),
          ],
        ),
        SizedBox(height: 29),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image: "assets/images/img_history_1.png",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image: "assets/images/img_history_2.png",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image: "assets/images/img_history_3.png",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image: "assets/images/img_history_4.png",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
          ],
        ),
        SizedBox(height: 29),
        Text(
          "The first appearance of the Taliwang chicken was during the war between the Selaparang Kingdom and the Karangasem Kingdom of Bali. At that time the troops of the Taliwang Kingdom, located on Sumbawa Island, in the west, were brought to Lombok to help the Selaparang Kingdom which was under attack from the Karangasem kingdom of Bali. The Taliwang people who served as peacekeepers were placed in an area which was named Karang Taliwang according to their place. The task of the Taliwang people is to approach the King of Karangasem so that the battle that cost lives and property does not continue. In the peace mission, Islamic religious leaders, horsemen and cooks participated. Each has its own task. Religious leaders are tasked with giving life guidance to the community and approaching the King of Karangasem. The horseman is in charge of guarding and maintaining the horses. The cook is in charge of preparing the logistics. In line with the tasks and missions carried out, the cooks from the Taliwang Kingdom did their job well. They process and cook various foodstuffs to be eaten by war leaders and soldiers. One of them is making grilled chicken with a mixture of certain spices according to the tastes and traditions of the people concerned. Over time, the soldiers mingled with the Sasak people. From this socialization, finally the Sasak tribe can taste the delicious Taliwang chicken and they share knowledge about how to process it by using simple spices. In addition, the dominant assimilation is adopting various forms of knowledge and daily life procedures. For example in diet and food processing. In terms of diet and the type of food processed, they tend to adopt the culture of the Sasak people who like spicy food. Chicken meat is processed into spicy chicken with a spicy taste. Pelalah chicken is the forerunner of Taliwang chicken. The spices used come from the surrounding natural products such as shallots, garlic, chilies, salt, and shrimp paste. At that time, processed chicken was a special food that was used as a dish at certain times and only for self-consumption.",
          textAlign: TextAlign.justify,
        ).nunito20s().black(),
        SizedBox(height: 40),
      ],
    );
  }
}

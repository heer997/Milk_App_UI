import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget_AppDrawer.dart";
import "package:wscubetech_app_ui/Category/Milk_Category/Cow's_Milk/Amul_Milk.dart";
import "package:wscubetech_app_ui/Category/Milk_Category/Cow's_Milk/Avin_Milk.dart";
import "package:wscubetech_app_ui/Category/Milk_Category/Cow's_Milk/DudhsagarDairy_Milk.dart";
import "package:wscubetech_app_ui/Category/Milk_Category/Cow's_Milk/MotherDairy_Milk.dart";
import "package:wscubetech_app_ui/Category/Milk_Category/Cow's_Milk/Nestle_Milk.dart";
import "package:wscubetech_app_ui/Category/Milk_Category/Cow's_Milk/Quality_Milk.dart";
import "package:wscubetech_app_ui/Category/Milk_Category/Cow's_Milk/Saras_Milk.dart";

class CowsMilk extends StatelessWidget {
  const CowsMilk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cow's Milk",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 360.0,
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AmulMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Mr_Butler_Bottle_image.webp",
                        text: "Amul Milk",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SarasMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Mr_Butler_Bottle_image.webp",
                        text: "Saras Milk",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MotherDairyMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Mr_Butler_Bottle_image.webp",
                        text: "Mother Dairy",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return NestleMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Mr_Butler_Bottle_image.webp",
                        text: "Nestle",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AvinMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Mr_Butler_Bottle_image.webp",
                        text: "Avin Milk",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DudhsagarDairyMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Mr_Butler_Bottle_image.webp",
                        text: "Dudhsagar Dairy",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return QualityMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Mr_Butler_Bottle_image.webp",
                        text: "Quality",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

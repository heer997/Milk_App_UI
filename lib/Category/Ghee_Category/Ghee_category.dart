import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget.dart";
import "package:wscubetech_app_ui/Category/Ghee_Category/Amul_Ghee/Amul_Ghee.dart";
import "package:wscubetech_app_ui/Category/Ghee_Category/Dudhsagar_Ghee/Dudhsagar_Ghee.dart";
import "package:wscubetech_app_ui/Category/Ghee_Category/GRB_Ghee/GRB_Ghee.dart";
import "package:wscubetech_app_ui/Category/Ghee_Category/MotherDairy_Ghee/MotherDairy_Ghee.dart";
import "package:wscubetech_app_ui/Category/Ghee_Category/Nestle_Ghee/Nestle_Ghee.dart";
import "package:wscubetech_app_ui/Category/Ghee_Category/Organic_Ghee/Organic_Ghee.dart";
import "package:wscubetech_app_ui/Category/Ghee_Category/Quality_Ghee/Quality_Ghee.dart";

class GheeCategory extends StatelessWidget {
  const GheeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ghee Category",
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                              return OrganicGhee();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Organic_Ghee_bottle.webp",
                        text: "Organic Ghee",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AmulGhee();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Amul_Cow_Ghee.jpg",
                        text: "Amul Ghee",
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
                              return GRBGhee();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/GRB_Ghee.jpeg",
                        text: "GRB Ghee",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return NestleGhee();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Nestle_Ghee.jpg",
                        text: "Nestle Ghee",
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
                              return MotherDairyGhee();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Mother_Dairy_Ghee.webp",
                        text: "MotherDairy Ghee",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DudhsagarGhee();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Dudhsagar_Ghee.webp",
                        text: "Dudhsagar Ghee",
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
                              return QualityGhee();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Quality_Ghee.jpg",
                        text: "Quality Ghee",
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

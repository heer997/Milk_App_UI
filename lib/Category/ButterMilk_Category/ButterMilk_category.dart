import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/Amul_ButterMilk/Amul_ButterMilk.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/ButterMilk_Notifications.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/Dudhsagar_ButterMilk/Dudhsagar_ButterMilk.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/GRB_ButterMilk/Nestle_ButterMilk.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/MotherDairy_ButterMilk/MotherDairy_ButterMilk.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/Nestle_ButterMilk/Nestle_ButterMilk.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/Quality_ButterMilk/Quality_ButterMilk.dart";
import "package:wscubetech_app_ui/Category/ButterMilk_Category/Saras_ButterMilk/Saras_ButterMilk.dart";

class ButterMilkCategory extends StatelessWidget {
  const ButterMilkCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ButterMilk Category",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ButterMilkNotifications();
                  },
                ),
              );
            },
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
                              return AmulButterMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Amul_ButterMilk.jpg",
                        text: "Amul Buttermilk",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return NestleButterMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Nestle_ButterMilk.jpg",
                        text: "Nestle Buttermilk",
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
                              return GRBButterMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/GRB_ButterMilk.avif",
                        text: "GRB Buttermilk",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return QualityButterMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Quality_ButterMilk.webp",
                        text: "Quality Buttermilk",
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
                              return MotherDairyButterMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Mother_Dairy_ButterMilk.webp",
                        text: "MotherDairy Buttermilk",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DudhsagarButterMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Dudhsagar_ButterMilk.webp",
                        text: "Dudhsagar Buttermilk",
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
                              return SarasButterMilk();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Saras_ButterMilk.webp",
                        text: "Saras Buttermilk",
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

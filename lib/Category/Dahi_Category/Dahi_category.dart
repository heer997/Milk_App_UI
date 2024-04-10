import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget.dart";
import "package:wscubetech_app_ui/Category/Dahi_Category/Amul_Dahi/Amul_dahi.dart";
import "package:wscubetech_app_ui/Category/Dahi_Category/Dahi_Notification.dart";
import "package:wscubetech_app_ui/Category/Dahi_Category/Dudhsagar_Dahi/Dudhsagar_dahi.dart";
import "package:wscubetech_app_ui/Category/Dahi_Category/GRB_Dahi/GRB_dahi.dart";
import "package:wscubetech_app_ui/Category/Dahi_Category/MotherDairy_Dahi/MotherDairy_dahi.dart";
import "package:wscubetech_app_ui/Category/Dahi_Category/Nestle_Dahi/Nestle_Dahi.dart";
import "package:wscubetech_app_ui/Category/Dahi_Category/Quality_Dahi/Quality_dahi.dart";
import "package:wscubetech_app_ui/Category/Dahi_Category/Saras_Dahi/SarasDahi.dart";

class DahiCategory extends StatelessWidget {
  const DahiCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dahi Category",
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
                    return DahiNotifications();
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
                              return AmulDahi();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Amul_Dahi.png",
                        text: "Amul Dahi",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return NestleDahi();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Nestle_Dahi.jpg",
                        text: "Nestle Dahi",
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
                              return GRBDahi();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/GRB_Dahi.jpg",
                        text: "GRB Dahi",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return QualityDahi();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Quality_Dahi.jpg",
                        text: "Quality Dahi",
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
                              return MotherDairyDahi();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/MotherDairy_dahi.jpeg",
                        text: "MotherDairy Dahi",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DudhsagarDahi();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Dudhsagar_Dahi.jpg",
                        text: "Dudhsagar Dahi",
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
                              return SarasDahi();
                            },
                          ),
                        );
                      },
                      child: UiHelper.customContainer3(
                        height: 220.0,
                        width: 168.0,
                        image: "assets/images/Saras_Dahi.jpg",
                        text: "Saras Dahi",
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

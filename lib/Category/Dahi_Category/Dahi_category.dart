import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget_AppDrawer.dart";

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
            onPressed: (){},
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
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Amul_Dahi.png",
                      text: "Amul Dahi",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Nestle_Dahi.jpg",
                      text: "Nestle Ghee",
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/GRB_Dahi.jpg",
                      text: "GRB Dahi",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Quality_Dahi.jpg",
                      text: "Quality Dahi",
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/MotherDairy_dahi.jpeg",
                      text: "MotherDairy Dahi",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Dudhsagar_Dahi.jpg",
                      text: "Dudhsagar Dahi",
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Saras_Dahi.jpg",
                      text: "Saras Dahi",
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

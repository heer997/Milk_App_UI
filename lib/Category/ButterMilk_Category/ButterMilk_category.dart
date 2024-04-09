import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget_AppDrawer.dart";

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
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Amul_ButterMilk.jpg",
                      text: "Amul\nButtermilk",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Nestle_ButterMilk.jpg",
                      text: "Nestle\nButtermilk",
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
                      image: "assets/images/GRB_ButterMilk.avif",
                      text: "GRB\nButtermilk",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Quality_ButterMilk.webp",
                      text: "Quality\nButtermilk",
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
                      image: "assets/images/Mother_Dairy_ButterMilk.webp",
                      text: "MotherDairy\nButtermilk",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Dudhsagar_ButterMilk.webp",
                      text: "Dudhsagar\nButtermilk",
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
                      image: "assets/images/Saras_ButterMilk.webp",
                      text: "Saras\nButtermilk",
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

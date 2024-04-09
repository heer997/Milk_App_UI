import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget_AppDrawer.dart";

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
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Organic_Ghee_bottle.webp",
                      text: "Organic Ghee",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Amul_Cow_Ghee.jpg",
                      text: "Amul Ghee",
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
                      image: "assets/images/GRB_Ghee.jpeg",
                      text: "GRB Ghee",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Nestle_Ghee.jpg",
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
                      image: "assets/images/Mother_Dairy_Ghee.webp",
                      text: "MotherDairy\nGhee",
                    ),
                    UiHelper.customContainer3(
                      height: 220.0,
                      width: 168.0,
                      image: "assets/images/Dudhsagar_Ghee.webp",
                      text: "Dudhsagar\nGhee",
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
                      image: "assets/images/Quality_Ghee.jpg",
                      text: "Quality Ghee",
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

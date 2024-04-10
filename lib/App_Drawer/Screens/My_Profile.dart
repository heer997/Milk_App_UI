import "package:flutter/material.dart";
import "package:wscubetech_app_ui/App_Drawer/CustomWidget.dart";

class MyProfile extends StatelessWidget {
  MyProfile({super.key});

  TextEditingController nameController = TextEditingController(text: "Jay");
  TextEditingController surnameController =
      TextEditingController(text: "Hanuman");
  TextEditingController emailController =
      TextEditingController(text: "jayhanuman654@gmail.com");
  TextEditingController phoneController =
      TextEditingController(text: "5899654471");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Profile",
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
        body: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: 360.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage(
                        "assets/images/User_Account_Image_AppDrawer_MyProfile.avif"),
                  ),
                  const SizedBox(height: 10.0),
                  UiHelper.customTextFormField(
                    controller: nameController,
                    text: "Enter the name",
                  ),
                  const SizedBox(height: 20.0),
                  UiHelper.customTextFormField(
                    controller: surnameController,
                    text: "Enter the surname",
                  ),
                  const SizedBox(height: 20.0),
                  UiHelper.customTextFormField(
                    controller: emailController,
                    text: "Enter the Email",
                  ),
                  const SizedBox(height: 20.0),
                  UiHelper.customTextFormField(
                    controller: phoneController,
                    text: "Enter the phone",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";

class UiHelper {
  static customListTile({required String text, required Icon icon}) {
    return ListTile(
      title: Text(text),
    );
  }

  static customContainer2(
      {required double height,
      required double width,
      required String image,
      required Padding child}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static customContainer(
      {required String image,
      required String text,
      required double height,
      required double width}) {
    return Column(
      children: [
        Card(
          elevation: 15.0,
          child: Container(
            height: height,
            width: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
      ],
    );
  }

  static customContainer3(
      {required double height, required double width, required String image}) {
    return Card(
      elevation: 20.0,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

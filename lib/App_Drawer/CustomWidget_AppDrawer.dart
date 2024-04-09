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
      {required double height,
      required double width,
      required String image,
      required String text}) {
    return Card(
      elevation: 20.0,
      child: Stack(
        children: [
          // Container(
          //   child: Text(text),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          // ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170.0, left: 30.0),
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18.0,
                // backgroundColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static customTextButton(
      {required String text,
      required Color color,
      required Color color2,
      required VoidCallback callback}) {
    return TextButton(
      onPressed: callback,
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: color2),
      ),
    );
  }

  static customTextButton2(
      {required VoidCallback callback,
      required String text,
      required Color color,
      required Color color2}) {
    return TextButton(
      onPressed: callback,
      style: TextButton.styleFrom(
        backgroundColor: color,
        fixedSize: const Size(300.0, 50.0),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: color2),
      ),
    );
  }
}

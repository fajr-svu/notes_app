import 'package:flutter/material.dart';
import 'package:notes_app/models/color_item.dart';

class ColorlistView extends StatefulWidget {
  const ColorlistView({super.key});

  @override
  State<ColorlistView> createState() => _ColorlistViewState();
}

class _ColorlistViewState extends State<ColorlistView> {
  int currenIndex = 0;
  List<Color> color = [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color.fromARGB(255, 186, 160, 235),
    Color(0xff537D8D),
    Color(0xff482C3D),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: color.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                currenIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: color[index],
                isChosed: currenIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}

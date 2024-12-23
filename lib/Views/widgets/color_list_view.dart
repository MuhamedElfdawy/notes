import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color,});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?  CircleAvatar(
     radius: 38,
     backgroundColor: Colors.white,
     child: CircleAvatar(
       radius: 34,
       backgroundColor: color,
     ),
          ) :
     CircleAvatar(
        radius: 38,
        backgroundColor: color,
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {

  int currentIndex = 0;
  List<Color> colors = [
    Color(0xff003f5c),
    Color(0xff2c4875),
    Color(0xff8a508f),
    Color(0xffbc5090),
    Color(0xffff6361),
    Color(0xffff8531),
    Color(0xffffa600),
    Color(0xffffd380),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: (){
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
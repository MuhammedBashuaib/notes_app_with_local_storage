import 'package:flutter/material.dart';
import 'package:notes_app_with_local_storge/const.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isSelected,
    this.onTap,
    required this.color,
  });

  final bool isSelected;
  final void Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widthScreen * .013,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: isSelected
            ? Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: MyColors.kWhite,
                    width: 3.5,
                  ),
                ),
                child: CircleAvatar(
                  radius: heightScreen * .036,
                  backgroundColor: color,
                ),
              )
            : CircleAvatar(
                radius: heightScreen * .037,
                backgroundColor: color,
              ),
      ),
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({
    super.key,
  });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightScreen * .037 * 2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ColorItem(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            color: colors[index],
            isSelected: currentIndex == index ? true : false,
          );
        },
      ),
    );
  }
}

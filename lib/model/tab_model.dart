import 'package:catalog_apps/style/colorUI.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabModel extends StatefulWidget {
  final bool isChecked;
  final double size;
  final double iconSize;
  final Color selectedColor;
  final Color selectedIconColor;

  const TabModel(
      {Key key,
      this.isChecked,
      this.size,
      this.iconSize,
      this.selectedColor,
      this.selectedIconColor})
      : super(key: key);

  @override
  _TabModelState createState() => _TabModelState();
}

class _TabModelState extends State<TabModel> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
            color: _isSelected
                ? widget.selectedColor ?? Colors.blue
                : Colors.transparent,
            borderRadius: BorderRadius.circular(5.0),
            border: _isSelected
                ? null
                : Border.all(color: ColorUI.secondaryColor, width: 2.0)),
        width: widget.size ?? 30,
        height: widget.size ?? 30,
        child: _isSelected
            ? Icon(EvaIcons.checkmark,
                color: widget.selectedIconColor ?? Colors.white,
                size: widget.iconSize ?? 20)
            : null,
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String text;
  final int selectedPage;
  final IconData iconData;
  final int pageNumber;
  final Function onPressed;

  const TabButton(
      {Key key,
      this.text,
      this.selectedPage,
      this.pageNumber,
      this.onPressed,
      this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          color: selectedPage == pageNumber
              ? Colors.transparent
              : Colors.transparent,
          borderRadius: BorderRadius.circular(4.0),
        ),
        padding: EdgeInsets.symmetric(
          vertical: selectedPage == pageNumber ? 12.0 : 0,
          horizontal: selectedPage == pageNumber ? 20.0 : 0,
        ),
        margin: EdgeInsets.symmetric(
          vertical: selectedPage == pageNumber ? 0 : 12.0,
          horizontal: selectedPage == pageNumber ? 0 : 20.0,
        ),
        child: Text(
          text ?? "Tab Button",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight:
                selectedPage == pageNumber ? FontWeight.bold : FontWeight.w500,
            color: selectedPage == pageNumber
                ? Colors.black
                : ColorUI.secondaryColor,
          ),
        ),
      ),
    );
  }
}

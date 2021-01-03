part of modern_form_menu;

class ModernMenuDefaults {
  static Color unselectedColor = Color(0xffC5C6CE);
  static Color selectedColor = Color(0xff00D394);
  static IconData iconData = Icons.person;
  static bool sidebarWebItensExpandedDefault = true;

  static Widget get divisorLineMobile => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 0.5,
          color: Colors.grey,
        ),
      );
}

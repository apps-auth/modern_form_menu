part of modern_form_menu;

class ModernMenuItenModel {
  final IconData iconData;
  final double iconSize;
  final String title;
  final Function onTap;
  final bool Function() selected;
  final Color selectedColor;
  final Color unselectedColor;
  final bool isExpanded;
  final bool visible;

  ModernMenuItenModel({
    @required this.title,
    @required this.onTap,
    this.iconData,
    this.iconSize,
    this.selected,
    this.selectedColor,
    this.unselectedColor,
    this.isExpanded,
    this.visible,
  });

  ModernMenuItenModel copyWith({
    IconData iconData,
    double iconSize,
    String title,
    Function onTap,
    bool Function() selected,
    Color selectedColor,
    Color unselectedColor,
    bool isExpanded,
    bool visible,
  }) {
    return ModernMenuItenModel(
      iconData: iconData ?? this.iconData,
      iconSize: iconSize ?? this.iconSize,
      title: title ?? this.title,
      onTap: onTap ?? this.onTap,
      selected: selected ?? this.selected,
      selectedColor: selectedColor ?? this.selectedColor,
      unselectedColor: unselectedColor ?? this.unselectedColor,
      isExpanded: isExpanded ?? this.isExpanded,
      visible: visible ?? this.visible,
    );
  }

  @override
  String toString() {
    return 'MenuItenModel(iconData: $iconData, iconSize: $iconSize, title: $title, onTap: $onTap, selected: $selected, selectedColor: $selectedColor, unselectedColor: $unselectedColor, isExpanded: $isExpanded, visible: $visible)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ModernMenuItenModel &&
        o.iconData == iconData &&
        o.iconSize == iconSize &&
        o.title == title &&
        o.onTap == onTap &&
        o.selected == selected &&
        o.selectedColor == selectedColor &&
        o.unselectedColor == unselectedColor &&
        o.isExpanded == isExpanded &&
        o.visible == visible;
  }

  @override
  int get hashCode {
    return iconData.hashCode ^
        iconSize.hashCode ^
        title.hashCode ^
        onTap.hashCode ^
        selected.hashCode ^
        selectedColor.hashCode ^
        unselectedColor.hashCode ^
        isExpanded.hashCode ^
        visible.hashCode;
  }
}

extension MenuItenModelExtensions on ModernMenuItenModel {
  bool get isVisible => this.visible == null || this.visible;

  ModernMenuItemWeb get toMenuItemWeb {
    return ModernMenuItemWeb(
      title: this.title,
      onTap: this.onTap,
      selected: this.selected,
      isExpanded: this.isExpanded ?? false,
      iconData: this.iconData ?? ModernMenuDefaults.iconData,
      iconSize: this.iconSize ?? ModernMenuDefaults.iconSize,
      selectedColor: this.selectedColor ?? ModernMenuDefaults.selectedColor,
      unselectedColor:
          this.unselectedColor ?? ModernMenuDefaults.unselectedColor,
    );
  }

  Widget get toWeb {
    if (!this.isVisible) {
      return SizedBox();
    }
    return toMenuItemWeb;
  }

  Widget get toMobile {
    if (!this.isVisible) {
      return SizedBox();
    }
    return ModernMenuItenMobile(
      text: this.title,
      onTap: this.onTap,
    );
  }

  Widget get toWidget {
    if (kIsWeb) {
      return this.toWeb;
    } else {
      return this.toMobile;
    }
  }
}

part of modern_form_menu;

class ModernMenuSidebarWebModel {
  final String? labelImageUrl;
  final String? labelImageAsset;
  final String? labelTitle;
  final String? labelDescription;
  final Color? backgroundColor;
  final Color? selectedColor;
  final Color? unselectedColor;

  ModernMenuSidebarWebModel({
    this.labelImageUrl,
    this.labelImageAsset,
    this.labelTitle,
    this.labelDescription,
    this.backgroundColor,
    this.selectedColor,
    this.unselectedColor,
  });

  ModernMenuSidebarWebModel copyWith({
    String? labelImageUrl,
    String? labelImageAsset,
    String? labelTitle,
    String? labelDescription,
    Color? backgroundColor,
    Color? selectedColor,
    Color? unselectedColor,
  }) {
    return ModernMenuSidebarWebModel(
      labelImageUrl: labelImageUrl ?? this.labelImageUrl,
      labelImageAsset: labelImageAsset ?? this.labelImageAsset,
      labelTitle: labelTitle ?? this.labelTitle,
      labelDescription: labelDescription ?? this.labelDescription,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      selectedColor: selectedColor ?? this.selectedColor,
      unselectedColor: unselectedColor ?? this.unselectedColor,
    );
  }

  @override
  String toString() {
    return 'MenuSidebarWebModel(labelImageUrl: $labelImageUrl, labelImageAsset: $labelImageAsset, labelTitle: $labelTitle, labelDescription: $labelDescription, backgroundColor: $backgroundColor, selectedColor: $selectedColor, unselectedColor: $unselectedColor)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ModernMenuSidebarWebModel &&
        o.labelImageUrl == labelImageUrl &&
        o.labelImageAsset == labelImageAsset &&
        o.labelTitle == labelTitle &&
        o.labelDescription == labelDescription &&
        o.backgroundColor == backgroundColor &&
        o.selectedColor == selectedColor &&
        o.unselectedColor == unselectedColor;
  }

  @override
  int get hashCode {
    return labelImageUrl.hashCode ^
        labelImageAsset.hashCode ^
        labelTitle.hashCode ^
        labelDescription.hashCode ^
        backgroundColor.hashCode ^
        selectedColor.hashCode ^
        unselectedColor.hashCode;
  }
}

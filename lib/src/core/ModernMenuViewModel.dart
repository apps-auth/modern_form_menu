part of modern_form_menu;

class ModernMenuViewModel extends GetxController {
  final List<ModernMenuItenModel> itensModel;
  final ModernMenuSidebarWebModel? sidebarWebModel;

  final _menuItensExpanded =
      ModernMenuDefaults.sidebarWebItensExpandedDefault.obs;
  bool get menuItensExpanded => this._menuItensExpanded.value;
  set menuItensExpanded(bool value) => this._menuItensExpanded.value = value;

  final _setState = false.obs;
  bool get setState => this._setState.value;
  set setState(bool value) => this._setState.value = value;

  ModernMenuViewModel({
    required this.itensModel,
    this.sidebarWebModel,
  });

  void init() {}

  List<Widget> get itens {
    List<Widget> _itens = [];

    itensModel.forEach((element) {
      if (element.isVisible) {
        _itens.add(element.toWidget);
      }
    });

    return _itens;
  }

  List<ModernMenuItemWeb> itensWeb() {
    List<ModernMenuItemWeb> _itens = [];

    itensModel.forEach((element) {
      if (element.isVisible) {
        _itens.add(element
            .copyWith(
                isExpanded: menuItensExpanded,
                onTap: () {
                  element.onTap();
                  setState = !setState;
                })
            .toMenuItemWeb);
      }
    });

    return _itens;
  }
}

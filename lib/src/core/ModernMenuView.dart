part of modern_form_menu;

class ModernMenuView extends StatelessWidget {
  final ModernMenuViewModel controller;

  const ModernMenuView({
    Key key,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? ModernMenuWebView(controller: controller)
        : ModernMenuMobileView(controller: controller);
  }
}

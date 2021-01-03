part of modern_form_menu;

class ModernMenuMobileView extends StatelessWidget {
  final ModernMenuViewModel controller;

  const ModernMenuMobileView({
    Key key,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: controller?.itens?.length ?? 0,
      itemBuilder: (context, index) {
        Widget iten = controller.itens[index];

        return Column(
          children: [
            iten,
            ModernMenuDefaults.divisorLineMobile,
          ],
        );
      },
    );
  }
}

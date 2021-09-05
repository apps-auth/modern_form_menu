part of modern_form_menu;

class ModernMenuWebView extends StatelessWidget {
  final ModernMenuViewModel? controller;

  const ModernMenuWebView({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool setState = controller!.setState;

      return Container(
        height: MediaQuery.of(context).size.height,
        child: ModernMenuSideBar(
          labelTitle: controller!.sidebarWebModel!.labelTitle,
          labelDescription: controller!.sidebarWebModel!.labelDescription,
          labelImageAsset: controller!.sidebarWebModel!.labelImageAsset,
          labelImageUrl: controller!.sidebarWebModel!.labelImageUrl,
          backgroundColor: controller!.sidebarWebModel!.backgroundColor,
          selectedColor: ModernMenuDefaults.selectedColor,
          unselectedColor: ModernMenuDefaults.unselectedColor,
          isExpanded: controller!.menuItensExpanded,
          onTapExpanded: () {
            controller!.menuItensExpanded = !controller!.menuItensExpanded;
          },
          itens: controller!.itensWeb(),
        ),
      );
    });
  }
}

part of modern_form_menu;

class ModernMenuSideBar extends StatelessWidget {
  final String? labelImageUrl;
  final String? labelImageAsset;
  final String? labelTitle;
  final String? labelDescription;
  final Color selectedColor;
  final Color unselectedColor;
  final Color? backgroundColor;
  final List<Widget>? itens;
  final List<Widget>? bottonItens;
  final bool? isExpanded;
  final void Function() onTapExpanded;

  ModernMenuSideBar({
    this.labelImageUrl,
    this.labelImageAsset,
    this.labelTitle,
    this.labelDescription,
    required this.backgroundColor,
    this.itens,
    this.bottonItens,
    required this.selectedColor,
    required this.unselectedColor,
    this.isExpanded,
    required this.onTapExpanded,
  });

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    bool _isExpanded = isExpanded != null && isExpanded!;

    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      width: _isExpanded && _size.width > ModernFormUtils.webBreakdown
          ? _size.width * .15
          : ScreenUtil().setWidth(73),
      child: Material(
        color: backgroundColor,
        elevation: 7,
        child: ListView(
          shrinkWrap: true,
          padding:
              const EdgeInsets.only(top: 25, bottom: 5, left: 25, right: 15),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(
                          ScreenUtil().setSp(-5), 0.0, 0.0),
                      child: CircleAvatar(
                        radius: _isExpanded ? 22 : 15,
                        backgroundColor: Colors.transparent,
                        backgroundImage: imageProviderWidget(
                          imageUrl: labelImageUrl,
                          imageAsset: labelImageAsset,
                        ),
                      ),
                    ),
                    _isExpanded && _size.width > ModernFormUtils.webBreakdown
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: ScreenUtil().setWidth(10)),
                              Text(
                                labelTitle ?? "",
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    color: Color(0xffC5C6CE)),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: ScreenUtil().setHeight(2)),
                              Text(
                                labelDescription ?? "",
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(14),
                                    color: Color(0xffC5C6CE)),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          )
                        : Container()
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(30)),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: itens ?? <Widget>[],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: bottonItens ?? <Widget>[],
                ),
                InkWell(
                  onTap: onTapExpanded,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Container(
                    height: ScreenUtil().setHeight(30),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: _isExpanded &&
                              _size.width > ModernFormUtils.webBreakdown
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(right: ScreenUtil().setSp(15)),
                          child: Container(
                            transform: Matrix4.translationValues(
                                ScreenUtil().setSp(-3.5), 0.0, 0.0),
                            child: Icon(
                              _isExpanded &&
                                      _size.width > ModernFormUtils.webBreakdown
                                  ? Icons.arrow_back_ios
                                  : Icons.arrow_forward_ios,
                              size: ScreenUtil().setSp(13),
                              color: unselectedColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

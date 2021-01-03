part of modern_form_menu;

class ModernMenuItemWeb extends StatefulWidget {
  final IconData iconData;
  final double iconSize;
  final String title;
  final Function onTap;
  final bool Function() selected;
  final Color selectedColor;
  final Color unselectedColor;
  final bool isExpanded;

  const ModernMenuItemWeb({
    Key key,
    @required this.iconData,
    @required this.title,
    @required this.onTap,
    @required this.selected,
    @required this.selectedColor,
    @required this.unselectedColor,
    this.isExpanded,
    this.iconSize,
  }) : super(key: key);
  @override
  _ModernMenuItemWebState createState() => _ModernMenuItemWebState();
}

class _ModernMenuItemWebState extends State<ModernMenuItemWeb> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    bool isSelected = (widget?.selected() ?? false);
    bool isHover = hover | isSelected;

    if (isSelected) {
      isHover = true;
    }

    Color color = isHover ? widget.selectedColor : widget.unselectedColor;

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onHover: (value) {
            if (isHover && !hover) {
            } else {
              setState(() {
                hover = value;
              });
            }
          },
          onTap: widget.onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    widget.iconData ?? Icons.refresh,
                    color: color,
                    size: widget.iconSize ?? ScreenUtil().setSp(22),
                  ),
                  widget.isExpanded != null && widget.isExpanded
                      ? Padding(
                          padding:
                              EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: _size.width * .09),
                            child: Wrap(
                              children: [
                                Text(
                                  widget?.title ?? "",
                                  style: TextStyle(
                                    color: color,
                                    fontSize: ScreenUtil().setSp(15),
                                  ),
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            ],
          ),
        ));
  }
}

part of modern_form_menu;

class ModernMenuItenMobile extends StatelessWidget {
  final String text;
  final Function onTap;

  const ModernMenuItenMobile({
    Key key,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text ?? "",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(18.5),
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: ScreenUtil().setSp(20),
            ),
          ],
        ),
      ),
    );
  }
}

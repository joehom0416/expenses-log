import 'package:flutter/material.dart';

class TwoColumnsPanel extends StatefulWidget {
  @override
  _TwoColumnsPanelState createState() => _TwoColumnsPanelState();

  final String leftTitle;
  final String leftContent;
  final Function leftOnTap;
  final String rightTitle;
  final String rightContent;
  final Function rightOnTap;

  TwoColumnsPanel(
      {@required this.leftTitle,
      @required this.leftContent,
      @required this.leftOnTap,
      @required this.rightTitle,
      @required this.rightContent,
      @required this.rightOnTap});
}

class _TwoColumnsPanelState extends State<TwoColumnsPanel> {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Container(
      color: primaryColor,
      child: Row(
        children: [
          summaryHeader(
              context, widget.leftTitle, widget.leftContent, widget.leftOnTap),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Container(
              width: 1,
              height: 40,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          summaryHeader(context, widget.rightTitle, widget.rightContent,
              widget.rightOnTap),
        ],
      ),
    );
  }

  Expanded summaryHeader(
      BuildContext context, String title, String value, Function onTap) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
            onTap();
          },
          child: Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.8)),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    value,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

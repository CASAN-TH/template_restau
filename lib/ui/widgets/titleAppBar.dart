import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  Size size;

  TitleAppBar({@required this.title});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return PreferredSize(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
        child: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.pop(context) ;
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 32,
                ),
              ),
              Expanded(
                child: Text(
                  this.title,
                  style: Theme.of(context).appBarTheme.textTheme.title,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(90);
}

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return PreferredSize(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 18.0),
        child: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(Icons.favorite_border,size: 32),
              Expanded(
                child: Text(
                  "Restaurant App ui",
                  style: Theme.of(context).appBarTheme.textTheme.title,
                  textAlign: TextAlign.center,
                ),
              ),
              Icon(Icons.notifications_none,size: 32,),
            ],
          ),
        ),
      ),
    );
  }

  @override

  Size get preferredSize => Size.fromHeight(90);
}

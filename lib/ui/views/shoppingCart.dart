import 'package:flutter/material.dart';
import 'package:template_restau/core/Dish_list.dart';
import '../widgets/cartItemCard.dart';
import '../../locator.dart';
import '../shared/text_styles.dart' as style;
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../core/Dish_list.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          height: 140,
          width: MediaQuery.of(context).size.width * 0.85,
          color: Theme.of(context).cardColor,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  child: TextField(

                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.card_giftcard,
                        color: Theme.of(context).primaryColor,
                        size: 30,
                      ),
                      contentPadding: EdgeInsets.only(top:6),
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(8.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor:
                          Theme.of(context).brightness == Brightness.light
                              ? Colors.grey.withOpacity(0.2)
                              : Colors.white,
                      hintStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                      hintText: "Coupon Code",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Total: ',
                        style: style.cardTitleStyle,
                      ),
                      Text(
                        '\$ 212',
                        style: style.cardTitleStyle
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      Text('Delivery charges included')
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 65,
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/paymentPage') ;
                      },
                      elevation: 0.5,
                      color: Theme.of(context).primaryColor,
                      child: Center(
                        child: Text(
                          'PLACE ORDER',
                        ),
                      ),
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        //physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                ),
                Positioned(
                  bottom: deviceSize.height * 0.05,
                  right: deviceSize.width * 0.4,
                  child: Container(
                    height: deviceSize.width,
                    width: deviceSize.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200.0),
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                ),
                Positioned(
                  bottom: deviceSize.height * 0.1,
                  left: deviceSize.width * 0.5,
                  child: Container(
                      height: deviceSize.width * 0.65,
                      width: deviceSize.width * 0.65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          color: Colors.white.withOpacity(0.1))),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: IconButton(
                              alignment: Alignment.topLeft,
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                        Text(
                          'Shopping Cart',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ChangeNotifierProvider(
              builder: (context) => locator<FoodList>(),
              child: Consumer<FoodList>(builder: (context, model, child) {
                return Transform.translate(
                  offset: Offset(0, -deviceSize.height * 0.15),
                  child: ListView.builder(
                    itemCount: model.categories.length,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = model.categories[index];
                      return CartItemCard(item: item);
                    },
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

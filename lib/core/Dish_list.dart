import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class FoodList extends ChangeNotifier {
  List categories = [
    {
      "id": "1",
      "type": "Pizza",
      "img": "assets/food1.jpeg",
      "cuisine": "Italien",
      "rating" : 5.0,
      "liked" : true,
      "price" : 248
    },
    {
      "id": "2",
      "type": "Pasta",
      "img": "assets/food2.jpg",
      "cuisine": "Italien",
      "rating" : 5.0,
      "liked" : false,
      "price" : 48


    },
    {
      "id": "3",
      "type": "Sweet and Sour Pork",
      "img": "assets/food3.jpg",
      "cuisine": "Chinese",
      "rating" : 3.5,
      "liked": true,
      "price" : 485

    },
    {
      "id": "4",
      "type": "Dumplings",
      "img": "assets/food4.jpg",
      "cuisine": "Chinese",
    "rating" : 4.5,
      "liked" : false,
      "price" : 481

    },
    {
      "id": "5",
      "type": "Spring Rolls",
      "img": "assets/food5.jpg",
      "cuisine": "Chinese",
    "rating" : 2.5,
      "liked" : true,
      "price" : 482

    },
    {
      "id": "6",
      "type": "Bibimbap",
      "img": "assets/food6.jpg",
      "cuisine": "Korean",
      "rating" : 5.0,
      "liked" : true,
      "price" : 483

    },
    {
      "id": "7",
      "type": "Bulgogi",
      "img": "assets/food7.jpg",
      "cuisine": "Korean",
      "rating" : 5.0,
      "liked" : true,
      "price" : 4

    },
    {
      "id": "8",
      "type": "Japchae ",
      "img": "assets/food8.jpg",
      "cuisine": "Korean",
      "rating" : 5.0,
      "liked" : true,
      "price" : 488

    },
    {
      "id": "9",
      "type": "Tacos al pastor",
      "img": "assets/food9.jpg",
      "cuisine": "Mexican",
      "rating" : 5.0,
      "liked" : true,
      "price" : 999

    },
    {
      "id": "10",
      "type": "Tyler's Flan",
      "img": "assets/food10.jpg",
      "cuisine": "Mexican",
      "rating" : 5.0,
      "liked" : true,
      "price" : 78

    },
    {
      "id": "11",
      "type": "Chiles Rellenos.",
      "img": "assets/food11.jpg",
      "cuisine": "Mexican",
      "rating" : 5.0,
      "liked" : true,
      "price" : 55

    },
    {
      "id": "12",
      "type": "Hamburger",
      "img": "assets/food12.jpg",
      "cuisine": "Americain",
      "rating" : 5.0,
      "liked" : true,
      "price" : 16

    },
    {
      "id": "13",
      "type": "Apple Pie",
      "img": "assets/food13.jpg",
      "cuisine": "Americain",
      "rating" : 5.0,
      "liked" : true,
      "price" : 48

    },
    {
      "id": "14",
      "type": "Steak",
      "img": "assets/food14.jpg",
      "cuisine": "Americain",
      "rating" : 5.0,
      "liked" : true,
      "price" : 666

    },
  ];

  List cuisines = [
    {
      "id": "1",
      "cuisine": "Chinese",
      "img": "assets/food1.jpeg",
    },
    {
      "id": "2",
      "cuisine": "Korean",
      "img": "assets/food2.jpg",
    },
    {
      "id": "3",
      "cuisine": "Americain",
      "img": "assets/food3.jpg",
    },
    {
      "id": "4",
      "cuisine": "Mexicain",
      "img": "assets/food4.jpg",
    },
    {
      "id": "5",
      "cuisine": "Italien",
      "img": "assets/food5.jpg",
    },

  ];
  likeAndUnlike(id){
    categories.forEach((categorie)  {
      if(categorie['id'] == id){
        categorie['liked'] = !categorie['liked'];
      }
    }  ) ;
    notifyListeners() ;
  }
}

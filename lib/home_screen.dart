import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:watch_shop/deatail_screen.dart';

//import '../componants/data_list_view.dart';

////////////////////////////////////////////////////////create class for list data

class User {
  final String w_name;
  final String brand;
  final String waranty;
  final String Model;
  final String price;
  final String imgurl;

  const User({
    required this.w_name,
    required this.brand,
    required this.waranty,
    required this.Model,
    required this.price,
    required this.imgurl,
  });
}

///////////////////////////////////////////////////////

class home_screen extends StatefulWidget {
  home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  ///////////////////////create list

  List<User> users = [
    User(
      w_name: 'Mondaine Watch',
      brand: 'Rolex',
      waranty: '2 years',
      Model: '2020',
      price: '10000 r/s',
      imgurl: 'images/img05.jpg',
    ),
    User(
      w_name: 'Mondaine Watch',
      brand: 'Rolex',
      waranty: '1 years',
      Model: '2019',
      price: '2600 r/s',
      imgurl: 'images/img02.jpg',
    ),
    User(
      w_name: 'Mondaine Watch',
      brand: 'Rolex',
      waranty: '5 Months',
      Model: '2022',
      price: '5000 r/s',
      imgurl: 'images/img03.jpg',
    ),
    User(
      w_name: 'Mondaine Watch',
      brand: 'Rolex',
      waranty: '3 years',
      Model: '2012',
      price: '1500 r/s',
      imgurl: 'images/img04.jpg',
    ),
    User(
      w_name: 'Mondaine Watch',
      brand: 'Rolex',
      waranty: '2 years',
      Model: '2012',
      price: '1700 r/s',
      imgurl: 'images/img01.jpg',
    ),
  ];

  ///////////////////ended list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //heading icon strt

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.more,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),

              //heading icon end

              SizedBox(
                height: 30,
              ),

//title strt

              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LUXURY ONLINE",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      "WATCH FOR SELL",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
              ),

//title end

//search barr srt

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  //height: 50,

                  //width: 200,

                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 20,
                        ),
                        Text(
                          "Search Watches",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //search barr end

              SizedBox(
                height: 40,
              ),

//down side search barr  fetured/watches/headphone strt
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "FEATURED",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "WATCHES",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "HEADPHONES",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),

//down side search barr  fetured/watches/headphone end

              SizedBox(
                height: 30,
              ),

/////////////////////////watches horizental view strt
              Container(
                  height: 210,
                  width: 350,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: ListView.builder(

                      // physics: NeverScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];
                        return Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                height: 200,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(user.imgurl),
                                      fit: BoxFit.cover),
                                ),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(top: 150),
                                  child: Text(
                                    user.price,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        //fontSize: 20,
                                        backgroundColor: Colors.white),
                                  ),
                                )),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => detail_screen(
                                              user: user,
                                            )));
                              },
                            ),
                          ],
                        );
                      })),

//watches horizental view end
              SizedBox(
                height: 20,
              ),

////down side horizantal watch vie vertical list view strt

              Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(color: Colors.yellow[300]),
                  child: ListView.builder(

                      // physics: NeverScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      // scrollDirection: Axis.horizontal,
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];
                        return Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 200,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(user.imgurl),
                                    fit: BoxFit.cover),
                              ),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 150),
                                child: Text(
                                  user.price,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      //fontSize: 20,
                                      backgroundColor: Colors.white),
                                ),
                              )),
                            ),
                          ],
                        );
                      })),

//////////////////////////
            ],
          ),
        ],
      )),
    );
  }
}

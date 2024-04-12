import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoping_app_ui/widget/product_details_popup.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  List<String> images = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("Product Overview"),
        leading: BackButton(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 450,
                  width: MediaQuery.of(context).size.width,
                  child: FanCarouselImageSlider(
                    sliderHeight: 430,
                    autoPlay: true,
                    imagesLink: images,
                    isAssets: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Warm Zipper',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Hooded jacket",
                        )
                      ],
                    ),
                    Text(
                      "\$300.00",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xffDB3022)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Cool windy weather is on its way. Send him out\nthe door in a jacket he wants to wear. Warm\nzooper Hooded Jacket",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff1F989797),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Color(0xffDB3022),
                        ),
                      ),
                    ),
                    ProductDetailsPopup()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

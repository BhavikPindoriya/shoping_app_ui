import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/product_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> tabs = ["All", "Category", "Top", "Recommended"];

  List<String> imageList = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg"
  ];

  List productTitle = [
    "Warm Zipeer",
    "Knitted woo",
    "Zipper Win",
    "Zipper Win",
  ];

  List price = [
    "\$300",
    "\$650",
    "\$50",
    "\$100",
  ];

  List review = [
    "54",
    "120",
    "60",
    "130",
  ];

  @override
  Widget build(BuildContext context) {
    print("Image List   " + imageList.length.toString());
    int crossAxixCount = MediaQuery.of(context).size.width ~/ 200; //
    double childAspectRatio = MediaQuery.of(context).size.width /
        (MediaQuery.of(context).size.height * 0.8);
    // double childAspectRatio = 0.6;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 1)
                        ],
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffDB3022),
                          ),
                          border: InputBorder.none,
                          label: Text(
                            'Find Your Product',
                            style: TextStyle(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12.withOpacity(0.05),
                              blurRadius: 2,
                              spreadRadius: 1)
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.notifications,
                          color: Color(0xffDB3020),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffFFF0DD),
                    borderRadius: BorderRadius.circular(20),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black12,
                    //     blurRadius: 2,
                    //     spreadRadius: 2,
                    //   )
                    // ]
                  ),
                  child: Image.asset("assets/images/freed.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                                style: const TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 220,
                  //color: Colors.red,
                  child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 300,
                        // color: Colors.red,
                        margin: EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 180,
                              width: 150,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductScreen(),
                                          ));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        imageList[index],
                                        height: 180,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Color(0xffDB3022),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productTitle[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                      maxLines: 7,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 22,
                                      ),
                                      Text('(' + review[index] + ')'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        price[index],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffDB3022)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Newest Product',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffDB3022)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GridView.builder(
                  itemCount: productTitle.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxixCount,
                    childAspectRatio: childAspectRatio,
                    //crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      //color: Colors.red,
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ProductScreen(),
                                        ));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      imageList[index],
                                      width: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Color(0xffDB3022),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            productTitle[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 22,
                              ),
                              Text('(' + review[index] + ')'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                price[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffDB3022),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

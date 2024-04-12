import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/payment_method_screen.dart';
import 'package:shoping_app_ui/widget/container_button_model.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  List imageList = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];

  List productTitles = [
    "Warm Zipper",
    "Knitted wool!",
    "Zipper Win",
    "Child Win",
  ];

  List prices = [
    "\$300",
    "\$600",
    "\$350",
    "\$60",
  ];

  @override
  Widget build(BuildContext context) {
    int imageLength = imageList.length;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("Cart"),
        leading: BackButton(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                  itemCount: imageLength,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    print("lENGTH IMAGE lIST:- $imageLength");
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: Color(0xffDB3022),
                            value: true,
                            onChanged: (val) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imageList[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitles[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Hooded Jacket',
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                prices[index],
                                style: const TextStyle(
                                    color: Color(0xffDB3022),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                CupertinoIcons.plus,
                                color: Colors.green,
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Select All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Checkbox(
                      activeColor: Color(0xffDB3022),
                      value: false,
                      onChanged: (val) {})
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$300.50",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xffDB3022)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentMetodScreen(),
                      ));
                },
                child: ContainerButtonModel(
                  itext: "Checkout",
                  containerwidth: MediaQuery.of(context).size.width,
                  bgColor: Color(0xffDB3022),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

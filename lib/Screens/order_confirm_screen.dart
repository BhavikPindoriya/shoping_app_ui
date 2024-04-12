import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/order_success_screen.dart';
import 'package:shoping_app_ui/Screens/payment_method_screen.dart';
import 'package:shoping_app_ui/Screens/shipping_address_screen.dart';
import 'package:shoping_app_ui/widget/container_button_model.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Order"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Shipping Address",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Dear Programer",
                              style: TextStyle(fontSize: 16),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ShippingAddressScreen(),
                                    ));
                              },
                              child: const Text(
                                "Change",
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xffDB3022)),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "3 Newbridge Court",
                          style: TextStyle(fontSize: 16),
                        ),
                        const Text(
                          "Chino Hills, CA, 974520, United States",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Method",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentMetodScreen(),
                            ));
                      },
                      child: const Text(
                        "Change",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xffDB3022)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Image.asset('assets/images/master.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("**** **** **** 3947"),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Delivery Method",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/icon3.png',
                            height: 25,
                          ),
                          Text("2-7 Days"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Home Delivery",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.indigo),
                          ),
                          Text("2-7 Days"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sub-Total",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "\$300.50",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Fee",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "\$15.00",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  color: Colors.black,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "\$315.50",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.redAccent),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderSuccessScreen()));
                  },
                  child: ContainerButtonModel(
                    itext: "Confirm Order",
                    containerwidth: MediaQuery.of(context).size.width,
                    bgColor: Color(0xffDB3022),
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

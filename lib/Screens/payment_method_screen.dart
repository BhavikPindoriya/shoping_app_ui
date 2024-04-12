import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/shipping_address_screen.dart';
import 'package:shoping_app_ui/widget/container_button_model.dart';

class PaymentMetodScreen extends StatefulWidget {
  const PaymentMetodScreen({super.key});

  @override
  State<PaymentMetodScreen> createState() => _PaymentMetodScreenState();
}

class _PaymentMetodScreenState extends State<PaymentMetodScreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("Payment Method"),
        leading: BackButton(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        border: _type == 1
                            ? Border.all(width: 1, color: Colors.black)
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: Color(0xffDB3022),
                                ),
                                Text("Amazon Pay",
                                    style: _type == 1
                                        ? const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          )
                                        : const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                              ],
                            ),
                            Image.asset(
                              'assets/images/amazon.png',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        border: _type == 2
                            ? Border.all(width: 1, color: Colors.black)
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: Color(0xffDB3022),
                                ),
                                Text(
                                  "Credit Card",
                                  style: _type == 2
                                      ? const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                ),
                              ],
                            ),
                            Spacer(), //visa no image pahela vacche avto hato spacer lagavya pachhi image banne sathe dekhay chhe
                            Image.asset(
                              'assets/images/visa.png',
                              width: 35,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/images/master.png',
                              width: 35,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        border: _type == 3
                            ? Border.all(width: 1, color: Colors.black)
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: Color(0xffDB3022),
                                ),
                                Text("Paypal",
                                    style: _type == 3
                                        ? TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          )
                                        : TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                              ],
                            ),
                            Image.asset(
                              'assets/images/paypal.png',
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        border: _type == 4
                            ? Border.all(width: 1, color: Colors.black)
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 4,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: Color(0xffDB3022),
                                ),
                                Text("Google Pay",
                                    style: _type == 4
                                        ? TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          )
                                        : TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                              ],
                            ),
                            Image.asset(
                              'assets/images/icon2.png',
                              width: 50,
                              height: 50,
                              //fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  const Row(
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
                    height: 70,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShippingAddressScreen(),
                          ));
                    },
                    child: ContainerButtonModel(
                      itext: "Confirm Payment",
                      containerwidth: size.width,
                      bgColor: Color(0xffDB3022),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

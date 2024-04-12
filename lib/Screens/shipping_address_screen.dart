import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/order_confirm_screen.dart';
import 'package:shoping_app_ui/widget/container_button_model.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Shipping Address"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Full Name"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Mobile Number"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Address"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "City"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "State/Province/Region"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Zip Code (Postal Code)"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Country"),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderConfirmScreen(),
                      ),
                    );
                  },
                  child: ContainerButtonModel(
                    itext: "Add Address",
                    containerwidth: MediaQuery.of(context).size.width,
                    bgColor: Color(0xffDB3022),
                  ),
                )
              ],
            ),
          )),
        ));
  }
}

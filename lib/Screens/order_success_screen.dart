import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/navigation_screen.dart';
import 'package:shoping_app_ui/widget/container_button_model.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/success.png',
                height: 250,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Success!",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your order will be delivered soon",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Thank You for choosing our app!",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavigationScreen(),
                    ));
              },
              child: ContainerButtonModel(
                itext: "Continue Shopping",
                containerwidth: MediaQuery.of(context).size.width,
                bgColor: Color(0xffDB3022),
              ),
            ),
          )
        ],
      ),
    );
  }
}

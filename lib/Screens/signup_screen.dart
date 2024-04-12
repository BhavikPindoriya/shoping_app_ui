import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/navigation_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset("assets/images/freed.png"),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Enter the Name"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Enter the email"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Enter Number"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.numbers)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          label: Text("Enter the Password"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye)),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          label: Text("Confirm Password"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye)),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Create Account",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(55),
                        backgroundColor: Color(0xffEf6969),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an Account?",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavigationScreen(),
                                ));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffEf6969),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

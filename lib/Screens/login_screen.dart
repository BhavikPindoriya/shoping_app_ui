import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/forgot_screen.dart';
import 'package:shoping_app_ui/Screens/navigation_screen.dart';
import 'package:shoping_app_ui/Screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 110,
              ),
              Image.asset("assets/images/freed.png"),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Enter the email"),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person)),
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
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotScreen(),
                              ));
                        },
                        child: const Text(
                          "Forget password",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xffDB3022)),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavigationScreen(),
                            ));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(55),
                        backgroundColor: Color(0xffDB3022),
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
                          "Don't Have an Account? ",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupScreen(),
                                ));
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffDB3022),
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

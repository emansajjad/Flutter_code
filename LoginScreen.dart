import 'package:flutter/material.dart';
import 'package:workspace/DashboardScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LoginScreen',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Container(
            width: 300,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                    "Welcome Back, Please enter your details",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Container(
                    height: 20,
                  ),
                ],
              ),
              // Text(
              //   "Login",
              //   style: Theme.of(context).textTheme.titleMedium,
              // ),
              // Text(
              //   "Welcome Back, Please enter your details",
              //   style: Theme.of(context).textTheme.titleSmall,
              // ),
              TextField(
                controller: emailText,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Enter Email",
                  hintStyle: Theme.of(context).textTheme.titleSmall,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.purpleAccent,
                        width: 2,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 2,
                      )),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                        width: 2,
                      )),
                  enabled: true,
                ),
              ),
              Container(
                height: 20,
              ),
              TextField(
                  obscureText: _obscureText,
                  // obscuringCharacter: "*",
                  controller: passText,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      hintText: "Enter Password",
                      hintStyle: Theme.of(context).textTheme.titleSmall,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.purpleAccent,
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.pinkAccent,
                            width: 2,
                          )))),
              Container(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          String uemail = emailText.text.toString();
                          String upass = passText.text;
                          print("Email: $uemail" "Pass:$upass");

                          if (emailText.text.isEmpty || passText.text.isEmpty) {
                            print("Please Enter Valid Credentials");
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.pinkAccent,
                              content: Text(
                                "Enter Valid Credentils",
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                            ));
                          } else {
                            print("Login Successfully!");
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.lightGreenAccent,
                              content: Text(
                                "Login Successfully!",
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                            ));

                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return DashboardScreen();
                            }));
                          }
                        },
                        child: Text('Login')),
                  ),
                ],
              ),
            ])),
      ),
    );
  }
}

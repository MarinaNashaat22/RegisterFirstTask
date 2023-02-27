import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:test/shareComp.dart';
import 'myAnimatedList.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    super.initState();
  }

  bool isPassword = true;

  final emailController = TextEditingController();
  final fullname = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassworedContrller = TextEditingController();
  final phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ClipPath(
                  clipper: WaveClipperOne(),
                  child: Container(
                    color: Colors.deepPurple,
                    height: 200,
                    child: const Center(
                        child: Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                //Email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field is Required';
                      } else if (emailController.text.contains('@') == false ||
                          emailController.text.contains('.') == false ||
                          emailController.text.contains('com') == false) {
                        return 'Plz Enter Valid Email like "test@gmail.com "';
                      }

                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'test@gmail.com',
                      label: const Text('Email'),
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //FullName
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: fullname,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field is Required';
                      }
                      if (value.length > 12) {
                        return "ListName should be maximum 12 Digits";
                      }
                      if (value.length < 3) {
                        return "ListName should be minimum 3 Digits";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'ABC',
                      label: const Text('FullName'),
                      prefixIcon: const Icon(Icons.abc_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field is Required';
                      }
                      if (value.length > 12 || value.length < 3) {
                        return 'Plz enter Password that contais 3 digits as min & 12 digts as max';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      label: const Text('password'),
                      prefixIcon: const Icon(Icons.lock_sharp),
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          icon: isPassword
                              ? const Icon(Icons.visibility_off_sharp)
                              : const Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //Confirm Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: confirmPassworedContrller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'plz enter ur Password again';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      label: const Text('Confirm Password'),
                      prefixIcon: const Icon(Icons.lock_sharp),
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          icon: isPassword
                              ? const Icon(Icons.visibility_off_sharp)
                              : const Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //phone Number
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    controller: phoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field is Required';
                      } else if (value.length < 11 || value.length > 11) {
                        return 'Plz enter Valid Phone Nmber that Contains 11 digits ';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      label: const Text('phone Number'),
                      prefixIcon: const Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                //RegisterButton
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50.0,
                    width: 450,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      border: Border.all(color: Colors.deepPurple, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print("Email ");
                          print("password");
                          navigateTo(context, const MyAnimatedList());
                        }
                      },
                      child: const Text("Register NOW",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),

                //LoginButton
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50.0,
                    width: 450,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.deepPurple, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed("Login");
                      },
                      child: const Text("Login",
                          style: TextStyle(
                            color: Colors.deepPurple,
                          )),
                    ),
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

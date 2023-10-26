import 'package:flutter/material.dart';

class Myregister extends StatefulWidget {
  const Myregister({super.key});

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('resources/image.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 200, left: 40),
              child: const Text(
                "Create Account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 4),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 40,
                    left: 40),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        // fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: 'Name',
                        hintStyle: TextStyle(
                            fontSize: 20, color: Colors.orangeAccent.shade100),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        // fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            fontSize: 20, color: Colors.orangeAccent.shade100),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          // fillColor: Colors.blueGrey.shade100,
                          filled: true,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.orangeAccent.shade100),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign Up ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orangeAccent.shade700,
                              fontSize: 25),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.orangeAccent.shade700,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Already Have Account Goto ",style: TextStyle(fontSize: 15,color: Colors.white),),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'login');
                        }, child: const Text('Login',style: TextStyle(decoration: TextDecoration.underline,fontSize: 20)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

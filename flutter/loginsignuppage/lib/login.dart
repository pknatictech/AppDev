import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('resources/image.jpg'),fit: BoxFit.cover)),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 240,left: 40),
            child:  const Text("My App 1",style: TextStyle(
              color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,wordSpacing: 4),
            ),
          ),
         SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                  right: 40,
                  left: 40),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(fontSize: 20,color: Colors.red),
                    decoration: InputDecoration(
                      // fillColor: Colors.blueGrey.shade100,
                      filled: true,
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 20,color: Colors.orangeAccent.shade100),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(fontSize: 20,color: Colors.red),
                    obscureText: true,
                    decoration: InputDecoration(
                    // fillColor: Colors.blueGrey.shade100,
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 20,color: Colors.orangeAccent.shade100),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign In",style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.orangeAccent.shade700,fontSize: 25),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.orangeAccent.shade700,
                        child: IconButton(
                          color: Colors.white,
                          onPressed: (){},
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
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'register');
                      },
                        child: const Text('Sign up',style: TextStyle(decoration: TextDecoration.underline,fontSize: 20)),
                      ),
                      TextButton(onPressed: (){}, child: const Text('Forgot Password',style: TextStyle(decoration: TextDecoration.underline,fontSize: 20)),
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

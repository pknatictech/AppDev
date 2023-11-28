import 'package:flutter/material.dart';
// import 'Mywidgets.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  @override
  Widget build(BuildContext context) {
    void printSuccessMessage() {
      print("Successful message!");
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/bg1.jpg'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("A1 Academy",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/logo1.png'),
                      fit: BoxFit.fill,
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text("THE WAY OF UPSKILL",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text("WITH",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text("A COMPUTER SCIENCE PORTAL FOR LEARNERS",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo.shade500,
                      ),
                      onPressed: () {
                        printSuccessMessage();
                        Navigator.pushNamed(context, "Login");
                      },
                      child: const Text('LOGIN'),
                    ),
                  ),
                  // mybutton("Login"),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo.shade500,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "Signup");
                      },
                      child: const Text('SIGN UP'),
                    ),
                  ),
                  // mybutton("Sign Up"),
                  Container(
                    padding: const EdgeInsets.only(top: 100),
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "Contactus");
                      },
                      child: const Text("Contact Us"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

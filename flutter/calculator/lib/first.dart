import "package:flutter/material.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String number = "0";
  String result = "0";
  buttonpress(String symbol) {
    setState(() {
      if (symbol == "AC") {
        number = "0";
        result = "0";
      }
      else if (symbol == "⌫") {
        number = number.substring(0,number.length-1);
        if(number== "")
          {
            number = "0";
          }
      }
      else
        {
          if(number == "0")
            {
              number = symbol;
            }
          else
            {
              number = number + symbol;
            }
        }

    });
  }

  buttoncreatewithcolor(symbol, color) {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.1,
        child: RawMaterialButton(
          onPressed: () => buttonpress(symbol),
          padding: EdgeInsets.all(13.0),
          shape: CircleBorder(),
          fillColor: Colors.orange,
          child: Text(symbol,
              style: TextStyle(
                  color: color, fontSize: 35, fontWeight: FontWeight.normal)),
        ));
  }

  buttoncreatesimple(symbol, color) {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.1,
        child: RawMaterialButton(
          onPressed: () => buttonpress(symbol),
          padding: EdgeInsets.all(13.0),
          shape: CircleBorder(),
          // fillColor: Colors.orange,
          child: Text(symbol,
              style: TextStyle(
                  color: color, fontSize: 35, fontWeight: FontWeight.normal)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.water_drop_outlined),
                    splashRadius: 15),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.calculate_outlined),
                    splashRadius: 15),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.dashboard_outlined),
                    splashRadius: 15),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.monetization_on_outlined),
                    splashRadius: 15),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    splashRadius: 15),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
                        height: 50,
                        child: Text(
                          number,
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
                  height: 70,
                  // color: Colors.red,
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttoncreatesimple("AC", Colors.orange),
                    buttoncreatesimple("⌫", Colors.orange),
                    buttoncreatesimple("%", Colors.orange),
                    buttoncreatesimple("÷", Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttoncreatesimple("7", Colors.black),
                    buttoncreatesimple("8", Colors.black),
                    buttoncreatesimple("9", Colors.black),
                    buttoncreatesimple("×", Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttoncreatesimple("4", Colors.black),
                    buttoncreatesimple("5", Colors.black),
                    buttoncreatesimple("6", Colors.black),
                    buttoncreatesimple("-", Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttoncreatesimple("1", Colors.black),
                    buttoncreatesimple("2", Colors.black),
                    buttoncreatesimple("3", Colors.black),
                    buttoncreatesimple("+", Colors.orange),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttoncreatesimple("⦿", Colors.orange),
                    buttoncreatesimple("0", Colors.black),
                    buttoncreatesimple(".", Colors.black),
                    buttoncreatewithcolor("=", Colors.white),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

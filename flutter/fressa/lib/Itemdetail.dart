import 'package:flutter/material.dart';
import 'package:fressa/Resources.dart';

class Itemdetail extends StatefulWidget {
  const Itemdetail({super.key});

  @override
  State<Itemdetail> createState() => _ItemdetailState();
}

class _ItemdetailState extends State<Itemdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: bgcolor,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(50),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(imagedata[0]['imagepath']),
              )),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: shadow,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: bgcolor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primarycolor,
                      boxShadow: shadow,
                    ),
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(left: 30),
                    child: IconButton(onPressed: (){},icon: Icon(Icons.plus_one,color: Colors.white,size: 30,),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primarycolor,
                    ),
                    height: 60,
                    width: 250,
                    margin: EdgeInsets.only(right: 30),
                    child: TextButton(onPressed: (){},child: Text("BUY NOW",style: TextStyle(color: Colors.white,fontSize: 22),)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

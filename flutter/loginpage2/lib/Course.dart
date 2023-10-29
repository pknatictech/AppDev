import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    var content = "Flutter is an open-source UI (SDK) Software Development Kit  created by Google.\nFlutter is an open-source UI software development kit (SDK) created by Google. It is used to build cross-platform applications for Android, IOS, Linux, Mac and Windows from a single codebase. Flutter allows developers to write code once and deploy it on multiple platforms, saving time and effort.\nFlutter uses Dart Programming language.\nFlutter uses Hybrid Approach\n1.Material Design Widgets for Android device.\n2.Cupertino Widgets for IOS.\n3.Lots of libraries to run Android and IOS to run.\n4.IOS consists for Kernel and device driver, and Android consists of Linux Kernal on device drivers.\n\nFlutter is Google’s Mobile SDK to build native iOS and Android, Desktop (Windows, Linux, macOS), and Web apps from a single codebase. When building applications with Flutter everything towards Widgets – the blocks with which the flutter apps are built. They are structural elements that ship with a bunch of material design-specific functionalities and new widgets can be composed out of existing ones too. The process of composing widgets together is called composition. The User Interface of the app is composed of many simple widgets, each of them handling one particular job. That is the reason why Flutter developers tend to think of their flutter app as a tree of widgets.\nShudder is an open source structure to make superior grade, elite execution versatile applications across portable working frameworks – Android and iOS. It gives a straightforward, strong, effective and straightforward SDK to compose versatile application in Google’s own language, Dart. This instructional exercise strolls through the essentials of Shudder system, establishment of Vacillate SDK, setting up Android Studio to foster Ripple based application, design of Ripple structure and fostering all sort of portable applications utilizing Vacillate structure.\n\nCrowd:-\nThis instructional exercise is ready for experts who are seeking to make a lifelong in the field of versatile applications. This instructional exercise is expected to make you agreeable in getting everything rolling with Ripple system and its different functionalities.\n\nEssentials:-\nThis instructional exercise is composed expecting that the perusers are as of now mindful about what a System is and that the perusers have a sound information on Item Situated Programming and fundamental information on Android structure and Dart programming. On the off chance that you are a fledgling to any of these ideas, we recommend you to go through instructional exercises connected with these first, before you start with Vacillate.\n\nTypes of widgets:-\n1.Stateless Widgets\n2.Stateful Widgets\n";
    return Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/bg3.jpg'),
      fit: BoxFit.fill,
    )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white60,
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Text("What is flutter ?",
                style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(content,
                style:TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
var id="";
var about =
    "Wecome to A1 Academy, where learning knows no bounds. Let's embark on a journey that redefines education in a digital era.Here, education isn't just a destination, it's a journey filled with possibilities, discovery, and growth.";
TextEditingController mytext2 = TextEditingController();
TextEditingController mytext1 = TextEditingController();
String capitalize(String value) {
  var result = value[0].toUpperCase();
  bool cap = true;
  for (int i = 1; i < value.length; i++) {
    if (value[i - 1] == " " && cap == true) {
      result = result + value[i].toUpperCase();
    } else {
      result = result + value[i];
      cap = false;
    }
  }
  return result;
}
mytextboxfcap(hint)
{
  return TextField(
      controller: mytext2,
      onChanged: (value) {
        mytext2.value = TextEditingValue(
            text: capitalize(value),
            selection: mytext2.selection);
      },
      style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        hintStyle: const TextStyle(
            fontSize: 20,
            color: Colors.white60
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
  );
}
mytextbox(hint)
{
  return TextField(
      controller: mytext1,
      onChanged: (value) {
        mytext1.value = TextEditingValue(
            text: value.toLowerCase(),
            selection: mytext1.selection);
      },
      style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        hintStyle: const TextStyle(
            fontSize: 20,
            color: Colors.white60),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
  );
}
mytextboxmull(hint,min,max)
{
  return TextField(
      minLines: min,
      maxLines: max,
      keyboardType: TextInputType.multiline,
      style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        hintStyle: const TextStyle(
            fontSize: 20,
            color: Colors.white60),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
  );
}

mybutton(text)
{
  return SizedBox(
    height: 40,
    width: 200,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo.shade500,
      ),
      onPressed: () {},
      child: Text(text,
        style: TextStyle(
          fontSize: 20,
        ),),
    ),
  );
}
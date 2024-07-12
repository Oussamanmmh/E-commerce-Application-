import 'package:flutter/material.dart';

class BottmNavPro extends StatelessWidget {
  const BottmNavPro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(0),
    child:  BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 100,
              child: Icon(Icons.shopping_basket_rounded),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 224, 224, 224),
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
            ),
            Container(
              width: 250,
               height: 60,
             
              child:   Center(child: Text("But now ",style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white ,fontSize: 15),)),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 40, 40, 40),
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
            )
          ],
        ),
      ),);
  }
}
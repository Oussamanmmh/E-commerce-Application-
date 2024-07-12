import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //increase the hight ot the app bar
        toolbarHeight: 100,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             const   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: TextStyle(
                        color: Color.fromARGB(255, 189, 189, 189),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Oussama Nemamcha 👋",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 227, 227, 227),

                  ),
                  
                  child:const Icon(Icons.notifications_on_outlined , size: 35)),
              ],
            ),
          ],
        ),),
     
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //search bar 
              const  SizedBox(

                  width: 330,
                 
                
                  child:  TextField(
                  
                    decoration: InputDecoration(
                      
                      hintText: "Search",
                      hintStyle: TextStyle(color: Color.fromARGB(255, 189, 189, 189)),
                      suffixIcon: Icon(Icons.search, color: Color.fromARGB(255, 189, 189, 189),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      )
                      
                    ),
                    
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 23, 23, 23),

                  ),
                  
                  child:const Icon(Icons.settings , size: 35 ,color: Colors.white,),
              

                )
              ],
             )
          ],

        )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_app/pages/imagesNav.dart';
import 'package:my_app/widgets/bottomnavigProd.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
       
         title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             IconButton(onPressed: (){},
         icon:const Icon(Icons.arrow_back) ),
         const  Text("Product details", textAlign: TextAlign.center,),
          // const SizedBox(width: 70,),
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 215, 215, 215),
              borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: const   Icon(Icons.favorite_border_outlined , ))
          ],
         ),
      ),

      body:  Padding(padding:  EdgeInsets.all(10),
        child: ListView(
          children:const [
            SizedBox(height: 10,),
            // Column(
            //   children: [
            //     Container(
            //       height: 300,
            //       width: 300,
            //        decoration:const  BoxDecoration(
            //         borderRadius: BorderRadius.all(Radius.circular(10)),
            //         image: DecorationImage(
            //           image: AssetImage('assets/zara4.jpg') ,
            //           fit: BoxFit.cover
            //           )
                      
            //        ),
            //     )
            //   ],
            // )
            
            ImageNav(),

          ],
        ),
      ),
      bottomNavigationBar:const BottmNavPro(),
    );
  }
}
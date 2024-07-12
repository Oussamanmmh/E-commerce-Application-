import 'package:flutter/material.dart';

class ImageNav extends StatefulWidget {
  const ImageNav({super.key});

  @override
  State<ImageNav> createState() => _ImageNavState();
}

class _ImageNavState extends State<ImageNav> {

  final imagespath =  [
    'assets/zara4.jpg',
    'assets/zara5.jpg',
    'assets/zara6.jpg',
    'assets/zara7.jpg',
    'assets/zara8.jpg',
  ];

  int SelectImage = 0 ;

  @override
  Widget build(BuildContext context) {
    return  Padding(padding:EdgeInsets.all(4),
    child:  Column(
       
      children: [
        Container(
          width: 300,
          height:300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagespath[SelectImage])),
              
          ),

        ),
        SizedBox(height: 10,),
        Container(
          height: 100,
          
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagespath.length,
            
            itemBuilder: (context, index){
              return GestureDetector(
                onTap: (){
                  setState(() {
                    SelectImage = index ;
                  });
                },
                child: Container(
                          width: 100,
                          height:100,
                          decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                   border: Border.all(color: SelectImage == index ? Colors.grey : Colors.transparent ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagespath[index])),
                  
                          ),
                         
                        ),
              );
             
              
        
            },
          ),
        ),
        SizedBox(height: 10,),
      const
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ZARA BOMBER JACKET WITH ZIP" ,style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),) ,
                Text("BLACK | 2345/23")
              ],
              
            ),
            Text('120\$',style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15)),
          ],
        ),
        const SizedBox(height: 5,),
        const Text("Oversize jacket made of technical fabric. High collar and long sleeves with pocket detail.", 
        style: TextStyle(color: Colors.grey),),
        const SizedBox(height: 20,),
        const Text("Size",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20), textAlign: TextAlign.start,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(onPressed: (){}, 
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black87 )
            ),
            child:const Text("S" ,style: TextStyle(color: Colors.white),) ),
            OutlinedButton(onPressed: (){}, 
            child:const Text("M" ,style: TextStyle(color: Colors.black),) ),
            OutlinedButton(onPressed: (){}, 
            child:const Text("L",style: TextStyle(color: Colors.black),) ),
            OutlinedButton(onPressed: (){}, 
            child:const Text("Xl",style: TextStyle(color: Colors.black),) )
          ],
        )

      ],
      
    )
    );
  }
}
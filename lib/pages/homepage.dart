import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

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
                const Column(
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
                    child:
                        const Icon(Icons.notifications_on_outlined, size: 35)),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 189, 189, 189)),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 189, 189, 189),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      //gradient color
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 164, 164, 164),
                          Color.fromARGB(255, 62, 62, 62),
                          Color.fromARGB(255, 11, 11, 11),
                        ],
                      ),
                    ),
                    child: const Icon(
                      Icons.settings,
                      size: 35,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 240,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage("assets/lacoste.jpg"),
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.darken),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Dont miss our New Collection",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.bold),
                              ),
                              OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      padding: const EdgeInsets.all(10),
                                      alignment: const Alignment(12, 12)),
                                  child: const Text(
                                    "Check now !",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Rubik',
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/adidas.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/nike.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.center,
                  child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Colors.black,
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 5,
                        expansionFactor: 4,
                      ))),

              const SizedBox(
                height: 10,
              ),
              //all , shoes , t-shirts , pants , jackets
              SizedBox(
                height: 67,
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  scrollDirection: Axis.horizontal,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "All",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Shoes",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "T-Shirts",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Pants",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Jackets",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              
              ),
              const SizedBox(
                height: 10,
              ),
            const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    "Popular",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                Text("See all",
                style: TextStyle(
                  color: Color.fromARGB(255, 189, 189, 189),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                ],
                
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Column(
                  children: [
                     Container(
                    width: 160,
                    height: 200,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/zara4.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),    ),
                   const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text("Jacket",
                            style: TextStyle(
                              color: Color.fromARGB(255, 189, 189, 189),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text("Zara 2021 ...",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                           
                            

                          ],
                          

                        ),
                        const SizedBox(width: 50,),
                        Text("50 \$ ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                      ],
                    )

                    

                  ],

                 ),
                  Column(
                    children: [
                      Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/nike1.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text("T-shirt",
                            style: TextStyle(
                              color: Color.fromARGB(255, 189, 189, 189),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text("Nike...",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                           
                            

                          ],
                          

                        ),
                        const SizedBox(width: 50,),
                        Text("120 \$ ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                      ],
                    ),
                  const  SizedBox(
                      height: 10,
                    )
                    ],
                  ),
                ],
              )
            ],
          )),
          bottomNavigationBar: GNav(
          rippleColor: Colors.grey[300]!,
          hoverColor: Colors.grey[100]!,
          iconSize:30,
          
          duration: const Duration(milliseconds: 100),

            tabs: 
         const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
          selectedIndex: 0, 
          onTabChange: (index){
            setState(() {
             // _pageController.jumpToPage(index);
            });
          },
          ),

    );
  }
}

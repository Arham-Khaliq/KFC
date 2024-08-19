import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  var picture = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg'
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              child: Expanded(child: ListTile(
                leading: Icon(Icons.location_pin),
                title: Text('Delivering to'),
                subtitle: Text('Address...'),
              )),
            ),
            Container(
              height: 100,
                width: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/KFC.png'),
                  fit: BoxFit.cover, // or BoxFit.contain, BoxFit.fill, etc.
                ),
              ),
            ),
          ],
        )
      ),
      drawer: Drawer(

        child: Padding(
          padding: const EdgeInsets.only(top: 70,left: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 0,left: 20),

                child: Row(
                  children: [
                    Icon(Icons.person_pin,size: 30,),
                    SizedBox(width: 30,),
                    Text('Chaudhary Arham',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


                  ],
                ),
              ),
              Divider(
                thickness: 5,
              ),
              Container(
                padding: const EdgeInsets.only(top: 30,left: 20),

                child: Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox( width: 40,),
                    Text('My favourite',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 25,left: 20),

                child: Row(
                  children: [
                    Icon(Icons.location_pin),
                    SizedBox( width: 40,),
                    Text('My Addresses',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 25,left: 20),

                child: Row(
                  children: [
                    Icon(Icons.menu_open),
                    SizedBox( width: 40,),
                    Text('My Order',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 25,left: 20),

                child: Row(
                  children: [
                    Icon(Icons.location_pin),
                    SizedBox( width: 40,),
                    Text('Store Locator',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 25,left: 20),

                child: Row(
                  children: [
                    Icon(Icons.restaurant_menu_outlined),
                    SizedBox( width: 40,),
                    Text('Menu',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 25,left: 20),

                child: Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox( width: 40,),
                    Text('About us',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delivery_dining,color:  Colors.red.shade500,),
                      Text('Delivery'),
                    ],
                  )),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      color: Colors.red
                    ),
                  ),
                ),
                Container(
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.backpack_outlined,color:  Colors.black,),
                      Text('Delivery'),
                    ],
                  )),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(7),
        
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 10,
              color: Colors.grey.shade300,
            ),
            Row(
        
              children: [
                Text("What's New ",style: TextStyle(fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationThickness: 3),),
        
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
        
                height: 100,
                child: PageView.builder(
                  itemCount: picture.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      picture[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
        
              ),
            ),
            
            Container(
              margin: EdgeInsets.all(20),
              height: 30,
              width: 350,
              color: Colors.red,
              child: Center(child: Text('REORDER',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Explore Menu',style: TextStyle(fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationThickness: 3),),
                  Row(
                    children: [
                      Text('View All'),
                      Icon(Icons.arrow_forward_ios_rounded,size: 13,)
                    ],
                  ),
                ],
              ),
            ),
        
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              // Adjust radius as needed
              child: DottedBorder(
              color: Colors.grey,
              strokeWidth: 2,
              dashPattern: [5, 4],
            child: Container(
            height: 250,
              width: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
        
                  Text('Everyday Value',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                  Image(image: AssetImage('assets/images/burger.jpeg'),)
                ],
              ),
        
            ),
                ),
                ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  // Adjust radius as needed
                  child: DottedBorder(
                    color: Colors.grey,
                    strokeWidth: 2,
                    dashPattern: [5, 4],
                    child: Container(
                      height: 125,
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
        
                          Text('Ala-Carte-&- Combos',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                          Image(image: AssetImage('assets/images/combo.png'),)
                        ],
                      ),
        
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  // Adjust radius as needed
                  child: DottedBorder(
                    color: Colors.grey,
                    strokeWidth: 2,
                    dashPattern: [5, 4],
                    child: Container(
                      height: 125,
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
        
                          Text('Promotion',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                          Container(
                            height: 100,
                            width: 130,
                              child: Image(image: AssetImage('assets/images/promotion.png'),fit:BoxFit.contain ,))
                        ],
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  // Adjust radius as needed
                  child: DottedBorder(
                    color: Colors.grey,
                    strokeWidth: 2,
                    dashPattern: [5, 4],
                    child: Container(
                      height: 125,
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
        
                          Text('Fries',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                          Image(image: AssetImage('assets/images/Fries.png'),)
                        ],
                      ),
        
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  // Adjust radius as needed
                  child: DottedBorder(
                    color: Colors.grey,
                    strokeWidth: 2,
                    dashPattern: [5, 4],
                    child: Container(
                      height: 125,
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
        
                          Text('Sharing',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                          Container(
                              height: 100,
                              width: 130,
                              child: Image(image: AssetImage('assets/images/meal.png'),fit:BoxFit.contain ,))
                        ],
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
        
          ],
        ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Text("Best deals",style: TextStyle(fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationThickness: 3),),

                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  Stack(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 8),
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        // Adjust radius as needed
                        child: DottedBorder(
                          color: Colors.grey,
                          strokeWidth: 2,
                          dashPattern: [5, 4],
                          child: Container(
                            height: 230,
                            width: 170,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                      height: 30,
                                      width: 15,
                                      color: Colors.red,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        height: 30,
                                        width: 15,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        height: 30,
                                        width:15,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),

                                Text('Zinger',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                Container(
                                    height: 150,
                                    width: 150,
                                    child: Image(image: AssetImage('assets/images/zinger.png'),)),
                              ],
                            ),

                          ),
                        ),
                                          ),
                      ),
                      Positioned(
                        top: 90,
                        left: 30,
                        child: Container(
                          width: 50,
                          height: 25,
                          color: Colors.red,
                          child: Center(child: Text('RS 500',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ]
                  ),
                  Stack(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            // Adjust radius as needed
                            child: DottedBorder(
                              color: Colors.grey,
                              strokeWidth: 2,
                              dashPattern: [5, 4],
                              child: Container(
                                height: 230,
                                width: 170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 30,
                                            width: 15,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 30,
                                            width: 15,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 30,
                                            width:15,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),

                                    Text('Family Festival',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                    Image(image: AssetImage('assets/images/meal.png'),)
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 30,
                          child: Container(
                            width: 55,
                            height: 25,
                            color: Colors.red,
                            child: Center(child: Text('RS 2500',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                        ),
                      ]
                  ),
                  Stack(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            // Adjust radius as needed
                            child: DottedBorder(
                              color: Colors.grey,
                              strokeWidth: 2,
                              dashPattern: [5, 4],
                              child: Container(
                                height: 230,
                                width: 170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 30,
                                            width: 15,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 30,
                                            width: 15,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 30,
                                            width:15,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),

                                    Text('Fries',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                    Image(image: AssetImage('assets/images/Fries.png'),)
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 30,
                          child: Container(
                            width: 50,
                            height: 25,
                            color: Colors.red,
                            child: Center(child: Text('RS 450',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                        ),
                      ]
                  ),
                  Stack(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            // Adjust radius as needed
                            child: DottedBorder(
                              color: Colors.grey,
                              strokeWidth: 2,
                              dashPattern: [5, 4],
                              child: Container(
                                height: 230,
                                width: 170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 30,
                                            width: 15,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 30,
                                            width: 15,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            height: 30,
                                            width:15,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),

                                    Text('Zinger',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                    Image(image: AssetImage('assets/images/burger.jpeg'),)
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 30,
                          child: Container(
                            width: 50,
                            height: 25,
                            color: Colors.red,
                            child: Center(child: Text('RS 500',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                        ),
                      ]
                  ),



                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Text("Top deals",style: TextStyle(fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationThickness: 3),),

                ],
              ),
            ),


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      // Adjust radius as needed
                      child: DottedBorder(
                        color: Colors.grey,
                        strokeWidth: 2,
                        dashPattern: [5, 4],
                        child: Container(
                          height: 120,
                          width: 350,
                          child: Row(
                    
                            children: [
                              Container(
                                  height: 120,
                                  width: 120,
                                  child: Image(image: AssetImage('assets/images/zinger.png'),)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Zinger Burger',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                  Text('Rs 700',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    height: 1,
                                    width: 200,
                                    color: Colors.black,
                                  ),
                    
                    
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Rs 700',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                      SizedBox(
                                        width: 130,
                                      ),
                                      Container(
                                        height: 25,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.red)
                    
                                        ),
                                        child: Center(child: Text('View',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
                                      ),
                                    ],
                                  ),
                    
                    
                    
                    
                                ],
                              ),
                    
                            ],
                          ),
                    
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      // Adjust radius as needed
                      child: DottedBorder(
                        color: Colors.grey,
                        strokeWidth: 2,
                        dashPattern: [5, 4],
                        child: Container(
                          height: 120,
                          width: 350,
                          child: Row(

                            children: [
                              Container(
                                  height: 120,
                                  width: 120,
                                  child: Image(image: AssetImage('assets/images/wrap.png'),)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Wrap',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                  Text('Rs 550',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    height: 1,
                                    width: 200,
                                    color: Colors.black,
                                  ),


                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Rs 550',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                      SizedBox(
                                        width: 130,
                                      ),
                                      Container(
                                        height: 25,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.red)

                                        ),
                                        child: Center(child: Text('View',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
                                      ),
                                    ],
                                  ),




                                ],
                              ),

                            ],
                          ),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      // Adjust radius as needed
                      child: DottedBorder(
                        color: Colors.grey,
                        strokeWidth: 2,
                        dashPattern: [5, 4],
                        child: Container(
                          height: 120,
                          width: 350,
                          child: Row(

                            children: [
                              Image(image: AssetImage('assets/images/burger.jpeg'),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Mighty Zinger',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                  Text('Rs 850',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    height: 1,
                                    width: 200,
                                    color: Colors.black,
                                  ),


                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Rs 850',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                      SizedBox(
                                        width: 130,
                                      ),
                                      Container(
                                        height: 25,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.red)

                                        ),
                                        child: Center(child: Text('View',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
                                      ),
                                    ],
                                  ),




                                ],
                              ),

                            ],
                          ),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      // Adjust radius as needed
                      child: DottedBorder(
                        color: Colors.grey,
                        strokeWidth: 2,
                        dashPattern: [5, 4],
                        child: Container(
                          height: 120,
                          width: 350,
                          child: Row(

                            children: [
                              Container(
                                  height: 120,
                                  width: 120,
                                  child: Image(image: AssetImage('assets/images/wrap.png'),)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Twister',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                  Text('Rs 490',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    height: 1,
                                    width: 200,
                                    color: Colors.black,
                                  ),


                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Rs 490',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                      SizedBox(
                                        width: 130,
                                      ),
                                      Container(
                                        height: 25,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.red)

                                        ),
                                        child: Center(child: Text('View',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
                                      ),
                                    ],
                                  ),




                                ],
                              ),

                            ],
                          ),

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


        
          ],
        ),
      ),


    );
  }
}


import 'package:flutter/material.dart';
import '../data.dart';
import '../gridview.dart';
import '../guitars.dart';




class homepagee extends StatefulWidget {
  const homepagee({super.key});
  @override
  State<homepagee> createState() => _homepageeState();
}

class _homepageeState extends State<homepagee> {
 @override
  Widget build(BuildContext context) {
    
 return Scaffold(
       body: DefaultTabController( // container
        length: 5,
        child: ListView( // scrollable column
          children: [
            
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),

                  Container(
                    height: 30,
                    width: 170,
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                         color: Colors.black,
                        ),

                      child: Text(
                      ' Heindguitar.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Icon(Icons.shopping_bag),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

           
            guitar(), // horizontal swipe section (pageview)
            
              SizedBox(
              height: 15,
            ),

            Container(
              child: TabBar(
                labelColor: Colors.black,
                 unselectedLabelColor: Colors.grey,
                 isScrollable: true,
                tabs: [
                  Text("All"),
                  Text("Bass"),
                  Text("Custom"),
                  Text("Pedals"),
                  Text("Ibanez"),
                ]),
             ),

             SizedBox(
              height: 15,
            ),

            Container(
              height: MediaQuery.of(context).size.height*1.2,
              child: TabBarView(
               children: [
                  gridview("all"),
                  gridview("bass"),
                  gridview("custom"),
                  Text('asas'),
                  Text('fddg'),
                  
                ]),
            ),

           
         
       ],

        ),
      ),
    );
}


}


import 'package:app1/data.dart';
import 'package:flutter/material.dart';

class guitar extends StatefulWidget {  // for pageview
  const guitar({super.key});

  @override
  State<guitar> createState() => _guitarState();
}

class _guitarState extends State<guitar> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 350,
        width: double.infinity,
        child: PageView.builder(
            // for scrolling pages
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (_, index) {
              return Container(
                height: 300,
                width: 400,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/" + data[index]["image"]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PRS Guiters",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white38,
                              ),
                            ),
                            Text(
                              " Grab ours latest collection and get special promo",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),

                            SizedBox(
                         height: 250,
                        ),

                   Row(   // scrolling dots
                  children: List.generate(data.length, (indexdots) {
                  return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 2),
                    width: index==indexdots?10:8,
                    height: index==indexdots?10:8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: index==indexdots?Colors.blueGrey:Colors.grey,
                    ),
                  ),
                );
              }),
              ),
                            
                           
                         ],
                        ),
                      ),
                        ),
                 ],
                ),
              );
            }),
      ),
    );
  }
}

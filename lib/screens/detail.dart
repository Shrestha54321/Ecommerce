import 'package:flutter/material.dart';
import '../data.dart';


class detail extends StatelessWidget {
  final Map value; //  variable declare for each detail as index from gridview is passed to value
  const detail(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: Container(
          height: double.infinity,
           child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40,left: 10,right: 10,bottom: 10),
                child: Container(
                  height: 400,
                  width: double.infinity,
                 
                  
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/"+value["image"]),
                            fit: BoxFit.fill,
                          ),
                        ),
                    
                ),
              ),

              SizedBox(height: 20),

             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                width: double.infinity,

                 child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                        Text("Description",
                   style:TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                   ) ,),
                  Text("Its a great guitar"),
                   Text("limited edition"),
                 
                 SizedBox(
                  height: 20,
                 ),

                 
                 Container(
                 
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       RichText(     // colour must be provided while using RichText 
                           text:TextSpan(
                           text:"Body \n",
                           style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                                               ) ,
                           children:[
                           TextSpan(
                             text: "mahagony",
                             style:TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.bold,
                             color: Colors.black38
                                           ) ,
                           
                           ),
                           ],
                           ),
                              ),
                   
                           RichText(     // colour must be provided while using RichText 
                           text:TextSpan(
                           text:"Neck \n",
                           style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                                               ) ,
                           children:[
                           TextSpan(
                             text: "maple rosted",
                             style:TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.bold,
                             color: Colors.black38
                                           ) ,
                           
                           ),
                           ],
                           ),
                              ),
                   
                   
                   
                    ],
                   ),
                 ),
                       
                  
                   
                 
                 
                    ],
                   ),
               ),
             ),
             
             
              
            
              
             
           
            ],
           ),
           
          ),
        );
    

        
      
      
    
  }
}
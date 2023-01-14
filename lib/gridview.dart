import 'package:app1/screens/detail.dart';
import 'package:flutter/material.dart';
import 'data.dart';

class gridview extends StatefulWidget {
  final String value;  
  const gridview(this.value,{super.key}); // getting value from tabview in this.value

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
     List<Map> originalList = List.from(data); // list of data is assigned to originalList to display for all items
 @override

 void initState(){ // runs very first which acts as a filter function
  super.initState();
   if(widget.value != null && widget.value == "bass") {
   originalList = originalList.where((data) => data["model"]=="Prs 12").toList();
     }
     else if(widget.value != null && widget.value == "custom") {
   originalList = originalList.where((data) => data["model"]=="Prs 13").toList();
     }

 }
  Widget build(BuildContext context) {
    return 
    Expanded(
      child: Container(
             child:GridView.builder(
               physics: const NeverScrollableScrollPhysics(),
             gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
              ),
             itemCount: originalList.length,
                itemBuilder: (_, index) { 
        
               return Column(
                    children: [
                                 GestureDetector(
                                  onTap: (() {
                                     Navigator.push(context,MaterialPageRoute(builder:(context){
                                return detail(originalList[index]); 
                                  }
                                  )
                                  );
                                  }
                                  ),
                                   child: Container(
                                    height: 160,
                                    width: 150,
                                    
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage("assets/"+originalList[index]["image"]),
                                        fit: BoxFit.fill,
                                      ),
                                    ), 
                                                         ),
                                 ),
                               
                          Text(originalList[index]["model"]),
                          Text(originalList[index]["price"]),
                          
                          
                             ],
                      );
            
                   }
                
    
              ),
             
          
      
        ),
    );
}
}






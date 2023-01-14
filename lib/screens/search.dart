import 'package:app1/data.dart';
import 'package:app1/data.dart';
import 'package:app1/gridview.dart';
import 'package:flutter/material.dart';
import 'detail.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {

List<Map> display_list=List.from(data);


  void updatelist(String value){
 setState(() {
   display_list = data.where((data) => data["model"].toString().toLowerCase().contains(value)).toList();
 });
 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("SEARCH PAGE")),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
              child: TextField(
              onChanged:(value){
                updatelist(value);
              } ,
                decoration: InputDecoration(
                  hintText: "Search",
                  prefix: Icon(Icons.search),
                ),
              ),
        ),
          
       
          Expanded(
            child: ListView.builder(
                
                itemCount: display_list.length,
                itemBuilder:(context, index) =>
                GestureDetector(
                  onTap: () {
                     Navigator.push(context,MaterialPageRoute(builder:(context){
                                 return detail(display_list[index]); 
                                   } ));
                  },
                  child: ListTile(
                    title:Text(display_list[index]["model"]),
                    subtitle: Text(display_list[index]["price"]),
                    leading: Image.asset( "assets/"+display_list[index]["image"]),),
                )
            
                ),
            ),
        ],
              
  
        
      ),
    );
  }
}
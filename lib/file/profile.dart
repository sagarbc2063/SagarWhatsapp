import 'package:flutter/material.dart';

class ProFile extends StatelessWidget {
  const ProFile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: SizedBox( width: 60, height: 60,
       child:   CircleAvatar(
        backgroundImage:AssetImage('assets/a.png'),
      
    
    
       ), ),
       title:  Text('sagar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
       subtitle:   Row(
        children: [
          Icon(Icons.turned_in_not_sharp),
           Text('hellow',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
    
        ],
    
       ),
    
       trailing:  Text('1:00pm', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
       
    );
  }
}
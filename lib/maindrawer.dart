import 'package:flutter/material.dart';

class mainDrawer extends StatelessWidget {
  const mainDrawer([Key key]):super(key : key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
 children: <Widget>[
   Container(
     child: Padding(
       padding: EdgeInsets.only(top: 50.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           CircleAvatar(
             radius: 50.0,
             backgroundImage: NetworkImage(""),
           ),
           SizedBox(
             height: 5.0,

           ),
           Text(
             "Omar Alshikh",
             style: TextStyle(
               fontSize: 22.0,
               fontWeight: FontWeight.w800
             ),
           ),
           SizedBox(
             height: 5.0,

           ),
           Text(
             "engalshikhomar@gmail.com",
             style: TextStyle(
                 fontSize: 10.0,
                 fontWeight: FontWeight.w400
             ),
           )

         ],
       ),
     ),
   ),
   SizedBox(
     height: 30.0,
   ),
   ListTile(
     onTap: (){},
     leading: Icon(
       Icons.person,
       color: Colors.black54,
     ),
     title: Text("Your Profile"),
   ),
   ListTile(
     onTap: (){},
     leading: Icon(
       Icons.chat,
       color: Colors.black54,
     ),
     title: Text("Chat"),
   ),
   ListTile(
     onTap: (){},
     leading: Icon(
       Icons.favorite,
       color: Colors.black54,
     ),
     title: Text("Favorite"),
   ),
 ],
    );
  }
}
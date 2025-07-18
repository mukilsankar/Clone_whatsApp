import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         title: Text('Mukil',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold ),),
         actions: [
           Icon(Icons.video_call,color: Colors.black,),
           SizedBox(width: 10,),
           Icon(Icons.call,color: Colors.black,),
           SizedBox(width: 8,),
           Icon(Icons.more_vert,color: Colors.black,),
           SizedBox(width: 8,),
         ],
       ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SizedBox(height: 15,),
          Center(child: Text('JUN 17,2025',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
          Text('Today',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),

        ],
      ),
    );
  }
}

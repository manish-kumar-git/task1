import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/screens/create.dart';
import 'package:task1/screens/delete.dart';
import 'package:task1/screens/get.dart';
import 'package:task1/screens/put.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen'),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>PostMethod()));
            },
            child: Text('Add',style: TextStyle(fontSize: 18),),),
          ),
           Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>PutMethod()));
            },
            child: Text('Edit',style: TextStyle(fontSize: 18),),),
          ),
           Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>DeleteMethod()));
            },
            child: Text('Delete',style: TextStyle(fontSize: 18),),),
          ),
           Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>GetInfo()));
            },
            child: Text('Get',style: TextStyle(fontSize: 18),),),
          ),
        ],
      ),
    );
  }
}
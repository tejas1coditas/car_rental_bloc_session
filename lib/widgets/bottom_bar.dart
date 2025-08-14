import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, color: Colors.black),
              Text("Home", style: TextStyle(color: Colors.black)),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.cabin, color: Colors.black),
              Text("Trips", style: TextStyle(color: Colors.black)),
            ],
          ),

          SizedBox(width: 40),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.search, color: Colors.black),
              Text("Search", style: TextStyle(color: Colors.black)),
            ],
          ),
         
        ],
      ),
    );
  }
}

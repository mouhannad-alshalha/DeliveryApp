import 'package:flutter/material.dart';

class Favoritepage extends StatelessWidget {
  const Favoritepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


appBar: AppBar(
  centerTitle: true,
  title:  Text('Your Favorite'
          ,style: TextStyle(
            color: Colors.black,
            fontSize: 28
          ),),
),

      body: ListView(
      children: [
        
        
      
      
      
         GestureDetector(
      
      child: Container(
        
        padding: EdgeInsets.all(15),
        height: 90,
       
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Column(
              children: [
                Text(
                  'favorite product',
                  style: TextStyle(fontSize: 18),
                ),
                Text('cost'),
              ],
            ),
      
            Icon(Icons.favorite,color: Colors.red,),
      
            Image.asset('asset/image/bg.jpg'),
          ],
        ),
      ),
          )
      ],
      
      ) ,
    );
  }
}

import 'package:flutter/material.dart';

class ressult extends StatelessWidget {

  final result ;
  final isMale ;
  final age ;
  ressult({
    required this.result,
   required this.age,
   required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
        elevation: 0,
        title: Text('BMI ressult'),
        titleTextStyle: TextStyle(
          fontSize: 23,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple[500],
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Gendar : ${ isMale? 'Male' : 'FeMale' }',
            style:TextStyle(
                fontSize: 35,color: Colors.white,
                fontWeight: FontWeight.bold
            ) ,),
          Text('Ressult  : $result',
            style:TextStyle(
                fontSize: 35,color: Colors.white,
                fontWeight: FontWeight.bold
            ) ,),
          Text('age : $age',
            style:TextStyle(
                fontSize: 35,color: Colors.white,
                fontWeight: FontWeight.bold
            ) ,),
        ],
      )) ,
    );
  }
}

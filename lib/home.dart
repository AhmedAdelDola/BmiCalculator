import 'dart:math';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool isMale = true;
  double hight = 150 ;
  int weight = 60 ;
  int age = 20 ;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[500],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],
          elevation: 0,
          title: Text('BMI Calcoutor'),
          titleTextStyle: TextStyle(
            fontSize: 23,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap:(){
                          setState(() {
                            isMale = true ;
                          });
                        } ,
                        child: Container(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Icon(Icons.male,size: 100,color: Colors.white),
                                Text('Male',
                                  style:TextStyle(
                                      fontSize: 25,color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ) ,)
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: isMale ? Colors.blue[800] : Colors.black45 ,
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: GestureDetector(
                        onTap:(){
                            setState(() {
                              isMale = false ;
                            });
                        } ,
                        child: Container(
                          child:
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Icon(Icons.female,size: 100,color: Colors.white),
                                Text('FeMale',
                                  style:TextStyle(
                                      fontSize: 25,color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ) ,)
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: !isMale ? Colors.blue[800] : Colors.black45 ,
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Expanded(
                          child: Text('Hight',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                              )),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline:TextBaseline.alphabetic,
                            children: [
                              Text('${hight.round()}',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                              )),
                              SizedBox(width: 3,),
                              Text('cm',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ))
                            ],),
                        ),
                        Slider(value: hight,
                          min: 80,
                          max: 220,
                          onChanged: (value) {
                          setState(() {
                            hight = value ;
                          });
                          },),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Expanded(
                                child: Text('weight',
                                  style:TextStyle(
                                      fontSize: 35,color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ) ,),
                              ),
                              Expanded(
                                child: Text('${weight.round()}',
                                  style:TextStyle(
                                      fontSize: 50,color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ) ,),
                              ),
                              Expanded(child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                      heroTag: 'weight-',
                                      child: Icon(Icons.remove),
                                      onPressed: (){
                                        setState(() {
                                          weight--;
                                        });
                                      }),
                                  FloatingActionButton(
                                      heroTag: 'weight+',
                                      child: Icon(Icons.add),
                                      onPressed: (){
                                        setState(() {
                                          weight++ ;
                                        });
                                      }),
                                ],
                              ))
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                    SizedBox(width: 30,),
                    Expanded(
                      child: Container(
                        child:
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Expanded(
                                child: Text('age',
                                  style:TextStyle(
                                      fontSize: 35,color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ) ,),
                              ),
                              Expanded(
                                child: Text('${age.round()}',
                                  style:TextStyle(
                                      fontSize: 50,color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ) ,),
                              ),
                              Expanded(child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                      heroTag: 'age-',

                                      child: Icon(Icons.remove),
                                      onPressed: (){
                                        setState(() {
                                          age-- ;
                                        });
                                      }),
                                  FloatingActionButton(
                                    heroTag: 'age+',
                                      child: Icon(Icons.add),
                                      onPressed: (){
                                        setState(() {
                                          age++;
                                        });
                                      }),
                                ],
                              ))
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  double result = weight/pow(hight/100, 2) ;
                  print(result.round());
                  Get.to(ressult(result: result.round(), age: age, isMale: isMale),transition: Transition.circularReveal,duration: Duration(milliseconds: 700,));

                  },
                child: Container(
                child: Center(child: Text('Calcoulate',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(20)
                ),

              ),)
            ],
          ),
        ),

      ),
    );
  }
}

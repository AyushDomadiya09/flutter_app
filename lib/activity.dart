import 'package:fitness_demo/home.dart';
import 'package:fitness_demo/profile.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {

  // int index = 0;
  // final pages = [
  //   HomePage(),
  //   ActivityPage(),
  //   ProfilePage(),
  // ];

  bool  _hasBeenPressed=true;
  bool  _hasPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white54,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavigationPage(),
              ),
            );
          },
        ),
        title: Text(
          'Activity',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(margin: EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choose Your",style: TextStyle(fontSize: 30,color: Colors.blueGrey),),
            Text("Daily Workout",style: TextStyle(fontSize: 30,color: Colors.blueGrey),),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10),
                  padding:EdgeInsets.all(0),
                  child: SizedBox(
                    height:20,
                    width: 78,
                    child: ElevatedButton(
                      onPressed:()=> {
                        setState((){
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      },
                      style: ElevatedButton.styleFrom(elevation:0,backgroundColor: _hasBeenPressed ? Colors.blueGrey : Colors.white60,),
                      child: Container(margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(0)
                          ,child: Text("Activity",style: TextStyle(fontSize: 10,),
                          ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10),
                  child: SizedBox(
                    height:20,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () =>{
                        setState(() {
                          _hasPressed = !_hasPressed ;
                        })
                      },
                      style: ElevatedButton.styleFrom(elevation:0,backgroundColor: _hasPressed ? Colors.blueGrey : Colors.white60,),
                      child: Text("Area of focus",style: TextStyle(fontSize: 10,color: Colors.blueGrey),),),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Card(margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(child: Image.asset("assets/image/w.png",height: 70,),margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Walking",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    Expanded(
                      child: Card(margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(child: Image.asset("assets/image/r.png",height: 70,),margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Running",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    Expanded(
                      child: Card(margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(child: Image.asset("assets/image/g.png",height: 70,),margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Gym",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(child: Image.asset("assets/image/y.png",height: 70,),margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Yoga",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    Expanded(
                      child: Card(margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(child: Image.asset("assets/image/c.png",height: 70,),margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Cycling",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    Expanded(
                      child: Card(margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(child: Image.asset("assets/image/s.png",height: 70,),margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Swimming",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ],
                ),

              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding:EdgeInsets.all(0),
                  child: SizedBox(
                    height:20,
                    width: 78,
                    child: ElevatedButton(
                      onPressed:()=> {
                        setState((){
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      },
                      style: ElevatedButton.styleFrom(elevation:0,backgroundColor: _hasBeenPressed ? Colors.blueGrey : Colors.white60,),
                      child: Container(margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(0)
                          ,child: Text("Meal",style: TextStyle(fontSize: 10,),)),),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(margin: EdgeInsets.fromLTRB(0, 15, 10, 0),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(child: Image.asset("assets/image/break.png",height: 70,width: 60,)
                              ,margin: EdgeInsets.all(10)),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Breakfast",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    Expanded(
                      child: Card(margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(child: Image.asset("assets/image/lunch.png",height: 70,width: 60,),
                              margin: EdgeInsets.all(15)),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Lunch",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(margin: EdgeInsets.fromLTRB(0, 20, 10, 20),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(child: Image.asset("assets/image/din.png",height: 70,width: 60,),
                              margin: EdgeInsets.all(15)),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Dinner",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    Expanded(
                      child: Card(margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(child: Image.asset("assets/image/seed.png",height: 70,width: 60,),
                            margin: EdgeInsets.all(15),),
                            Container(margin: EdgeInsets.only(bottom: 10),
                                child: Text("Seeds",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),))
                          ],
                        ),
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    // bottomNavigationBar: BottomNavigationBar(
    //   currentIndex: index,
    //   onTap: (int value) {
    //     setState(() {
    //       index = value;
    //     });
    //   },
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.home,size: 40,),
    //       label: '',
    //     ),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.auto_graph_outlined,size: 40,),
    //         label: ''
    //     ),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.person,size: 40,),
    //         label: ''
    //     ),
    //   ],
    // ),
    );
  }
}

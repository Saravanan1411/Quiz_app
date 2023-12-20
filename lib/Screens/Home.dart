import 'package:flutter/material.dart';
import 'package:quiz/Screens/QuizScreen.dart';

import '../Model/CategoryModel.dart';
import '../Styles/Color.dart';
import '../Styles/TextStyle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradient_1, gradient_2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            )
        ),
        child:SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*1,
                  child: ListView.builder(
                    itemCount: CategoryList.length,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children:[
                              Card(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.2,
                                  width: MediaQuery.of(context).size.width*1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                      image: NetworkImage(CategoryList[index].bannerImage.toString()),
                                      fit: BoxFit.fill
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 1,
                                        spreadRadius:1,

                                      )
                                    ],
                                  ),


                                  foregroundDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [Colors.transparent,Colors.black]
                                      )
                                  ),


                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                  left:10,
                                  child: Text(CategoryList[index].categoryName.toString(),style: cardTextColor,)
                              ),
                              Positioned(
                                  bottom:10,
                                  right:5,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> QuizScreen(categoryId: CategoryList[index].id.toString(), categoryName: CategoryList[index].categoryName.toString(),)), (route) => false);
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.blue), // Set the background color
                                      foregroundColor: MaterialStateProperty.all(Colors.white), // Set the text color
                                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(8.0)), // Set padding
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0), // Set border radius
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Text("Start Test"),
                                        Icon(Icons.play_arrow_rounded)
                                      ],
                                    ),
                                  )
                              )
                            ]
                          ),
                        );
                      }
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

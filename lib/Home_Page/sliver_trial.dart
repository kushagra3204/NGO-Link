import 'package:flutter/material.dart';
import 'package:ngo_link/Home_Page/main_screen_home_start.dart';
import 'package:ngo_link/Home_Page/searchbar_home.dart';

class SliverTrial extends StatelessWidget {
  const SliverTrial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    String TextFieldData="";
    return CustomScrollView(
          slivers: [
            SliverAppBar(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(200),bottomLeft: Radius.circular(200))
              ),
              expandedHeight: 75,
              backgroundColor: Colors.blue.shade700,
              floating: true,
              stretch: true,
              snap: true,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.only(top: 15.0,),
                child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: TextButton(
                          onPressed: ()=>Scaffold.of(context).openDrawer(),
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.all(5),
                            shape: CircleBorder(side: BorderSide.none,eccentricity: 0),
                            foregroundColor: Colors.white,
                          ),
                          child: Icon(
                            Icons.menu_rounded,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: "GTWalsheimPro",
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        //TODO 1: Implement search function
                        onPressed: (){
                          showSearch(context: context, delegate: SearchBarHome());
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          shape: CircleBorder(side: BorderSide.none,eccentricity: 0),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.all(5),
                        ),
                        child: Icon(
                          Icons.search,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
              ),


            ),

            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        // Color(0xFFfdbb2d),
                        // Color(0xFF22c1c3),
                        Colors.blue.shade100,
                        Colors.blue.shade50,
                      ],
                    ),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.black,
                    //       blurRadius: 10,
                    //       spreadRadius: 1.0,
                    //       offset: Offset(2,5)
                    //   )
                    // ],
                    border: Border.all(color: Colors.blue.shade50),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(45),topLeft: Radius.circular(45))
                ),
                child: SingleChildScrollView(
                  child: Padding(//Scrollbar init
                    padding: EdgeInsets.all(30),
                    child: MainScreenHomeStart(),
                  ),
                ),
              ),
            )
          ],
      );
  }
}
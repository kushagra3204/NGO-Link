import 'package:flutter/material.dart';
import 'package:ngo_link/Home_Page/about_us.dart';


class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {

  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    return Drawer(
      width: screenSize.width*0.7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(80),bottomRight: Radius.circular(80))),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(80),bottomRight: Radius.circular(80)),
              image: DecorationImage(
                image: AssetImage("images/sidebar-design.png"),
                fit: BoxFit.fill,
                // opacity:
              ),
            ),
          ),
          // Column(
          //   children: [
          //     Spacer(),
          //     Container(
          //       height: 200,
          //       decoration: BoxDecoration(
          //           image: DecorationImage(
          //             image: NetworkImage(
          //                 "https://cdn-icons-png.flaticon.com/512/7194/7194255.png"
          //               // "https://cdn-icons-png.flaticon.com/512/7194/7194164.png",
          //             ),
          //             fit: BoxFit.contain,
          //           )
          //       ),
          //     ),
          //   ],
          // ),
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(height: 300,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.person,size: 100,color: Colors.black,),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text("Vikas Yadav",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),),
                            SizedBox(height: 8,),
                            Text("+91 8128275205",style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(0.5)),),
                          ],
                        )
                        ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Divider(color: Colors.black.withOpacity(0.3),thickness: 1),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs()));
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(45, 8, 0, 8),
                        child: Row(
                          children: [
                            Image.asset(
                              "sidebar_icons/about_us.png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(width: 25,),
                            Text("About Us",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(45, 8, 0, 8),
                        child: Row(
                          children: [
                            Image.asset(
                              "sidebar_icons/event.png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(width: 25,),
                            Text("Event",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(45, 8, 0, 8),
                        child: Row(
                          children: [
                            Image.asset(
                              "sidebar_icons/issues.png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(width: 25,),
                            Text("Issues",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(45, 8, 0, 8),
                        child: Row(
                          children: [
                            Image.asset(
                              "sidebar_icons/donate.png",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(width: 25,),
                            Text("Donate",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 200,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //         image: NetworkImage(
                  //           "https://cdn-icons-png.flaticon.com/512/7194/7194255.png"
                  //           // "https://cdn-icons-png.flaticon.com/512/7194/7194164.png",
                  //         ),
                  //         fit: BoxFit.contain,
                  //       )
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

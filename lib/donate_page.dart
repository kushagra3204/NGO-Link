import "package:flutter/material.dart";

class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Color(0xFFfdbb2d),
                Color(0xFF22c1c3),
                // Color(0xFF020024),
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                  child: Text(
                    "Donate",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "KGHAPPY",
                        letterSpacing: 0.5,
                        fontSize: 35,
                        // fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 80,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.black.withOpacity(0.4),
                                border: Border.all(color: Colors.black.withOpacity(0.7),width: 10)
                              ),
                              child: Column(
                                children: [
                                  Image.network("https://cdn-icons-png.flaticon.com/512/9750/9750634.png",height: 100,width: 100,),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      "Donate Money",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.black.withOpacity(0.4),
                                  border: Border.all(color: Colors.black.withOpacity(0.7),width: 10)
                              ),
                              child: Column(
                                children: [
                                  Image.network("https://cdn-icons-png.flaticon.com/512/7152/7152391.png",height: 100,width: 100,),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      "Donate Clothes",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.black.withOpacity(0.4),
                                  border: Border.all(color: Colors.black.withOpacity(0.7),width: 10)
                              ),
                              child: Column(
                                children: [
                                  Image.network("https://cdn-icons-png.flaticon.com/512/8686/8686018.png",height: 100,width: 100,),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      "Donate Food",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.black.withOpacity(0.4),
                                  border: Border.all(color: Colors.black.withOpacity(0.7),width: 10)
                              ),
                              child: Column(
                                children: [
                                  Image.network("https://cdn-icons-png.flaticon.com/512/8686/8686000.png",height: 100,width: 100,),
                                  const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      "Donate Books",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.black.withOpacity(0.4),
                                  border: Border.all(color: Colors.black.withOpacity(0.7),width: 10)
                              ),
                              child: Column(
                                children: [
                                  Image.network("https://cdn-icons-png.flaticon.com/512/8686/8686018.png",height: 100,width: 100,),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      "Donate Food",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.black.withOpacity(0.4),
                                  border: Border.all(color: Colors.black.withOpacity(0.7),width: 10)
                              ),
                              child: Column(
                                children: [
                                  Image.network("https://cdn-icons-png.flaticon.com/512/8686/8686000.png",height: 100,width: 100,),
                                  const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      "Donate Books",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

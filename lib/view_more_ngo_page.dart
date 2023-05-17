import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewMoreNgoPage extends StatefulWidget {
  const ViewMoreNgoPage({Key? key}) : super(key: key);

  @override
  State<ViewMoreNgoPage> createState() => _ViewMoreNgoPageState();
}

class _ViewMoreNgoPageState extends State<ViewMoreNgoPage> {
  var collection=FirebaseFirestore.instance.collection("NGOTest");
  late List<Map<String,dynamic>> items=[] ;
  bool isLoaded=false;
  _incrementCounter() async{
    List<Map<String,dynamic>> tempList=[];
    var data= await collection.get();

    for (var element in data.docs) {
      tempList.add(element.data());
    }

    setState(() {
      isLoaded=true;
      items=tempList;

    });
  }


  @override
  Widget build(BuildContext context) {
    _incrementCounter();
    return Scaffold(
      appBar: AppBar(
        title: Text("NGO's List"),
      ),
      body: SafeArea(
        child: isLoaded?ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index) {
          return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              index==0?SizedBox(height: 10,):
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(1,3),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Text(
                              "${items[index]["Name of NGOs"]}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: "GTWalsheimPro",
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Text(
                              "${items[index]["Purpose"]}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "FiraSans",
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Text(
                              "${items[index]["City"]},${items[index]["State"]}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "TiltNeon"
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 20,),



              // Container(
              //   height: 100,
              //   decoration: BoxDecoration(
              //     color: Colors.blue[300],
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.black,
              //         spreadRadius: 1,
              //         blurRadius: 4,
              //         offset: Offset(1,3),
              //       ),
              //     ],
              //
              //   ),
              // ),
              // SizedBox(height: 20,),
              // Container(
              //   height: 100,
              //   decoration: BoxDecoration(
              //     color: Colors.blue[300],
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.black,
              //         spreadRadius: 1,
              //         blurRadius: 4,
              //         offset: Offset(1,3),
              //       ),
              //     ],
              //
              //   ),
              // ),
            ],
          ),
        );
      },
      ):Center(child: CircularProgressIndicator()),
    ));
  }
}

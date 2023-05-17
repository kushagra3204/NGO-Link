import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ngo_link/Home_Page/ngo_near_you_card.dart';


class Searchfunctionality extends StatefulWidget {
  String SearchText="";
  Searchfunctionality({super.key, required this.SearchText});
  @override
  State<Searchfunctionality> createState() => _SearchfunctionalityState(SearchText: SearchText);
}

class _SearchfunctionalityState extends State<Searchfunctionality> {
  List <String> SearchWiseNGOsName=[];
  String SearchText="";
  _SearchfunctionalityState({required this.SearchText});
  var collection=FirebaseFirestore.instance.collection("NGOs");
  late List<Map<String,dynamic>> items ;
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
      body: SafeArea(
        child: isLoaded?ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){

            //search text algorithm starts:
            double percentName=0,percentSector=0;
            for(int i=0;i<SearchText.length;i++) {
              if(items[index]["Name"].toLowerCase().contains(SearchText[i].toLowerCase())){
                percentName++;
              }
              if(items[index]["Sector"].toLowerCase().contains(SearchText[i].toLowerCase())){
                percentSector++;
              }
            }
            percentName=((percentName/SearchText.length)*100);
            percentSector=((percentSector/SearchText.length)*100);
            //search text algorithm ends.

            if(percentName>=95 || percentSector>=95) {

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: NgoNearYouCard(
                      ngoImages: items[index]["Images"],
                      ngoName: "${items[index]["Name"]??"untitled"}",
                      ngoSector: "${items[index]["Sector"]??"untitled"}",
                      ngoCity: "${items[index]["City"]??"untitled"}",
                      ngoState: "${items[index]["State"]??"untitled"}",
                      ngoCountry: "${items[index]["Country"]??"untitled"}",
                      ngoAbout: "${items[index]["About"]??"untitled"}",
                      ngoAddress: "${items[index]["Address"]??"untitled"}",
                      ngoPhoneNo: "${items[index]["PhoneNo"]??"untitled"}",
                      ngoWebsiteLink: "${items[index]["Website"]??"untitled"}",
                      ngoMapLoc: "${items[index]["GMapLocation"]??"untitled"}",

                    ),
                  ),
                ],
              );
            }
            return SizedBox();
        }):Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ngo_link/Home_Page/search_functionality.dart';

class SearchBarHome extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context){
    return [
      IconButton(
        onPressed: () {
          if(query.isEmpty) {
            close(context, null);
          } else {
            query='';
          }
        },
        icon: Icon(
          Icons.clear,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: ()=>close(context, null),
      icon: Icon(
        Icons.arrow_back_ios,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context){
    return Searchfunctionality(SearchText: query,);
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    List<String> suggestions=[
      'Education',
      'Women Empowerment',
      'Old Age Home',
      'Children',
      'Health Care',
      'Rural Development',
      'Disaster Management',
      'Gender Equality',
    ];
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        Size ScreenSize=MediaQuery.of(context).size;
        return Center(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.height*0.3,),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/8662/8662585.png",
                          ),
                          fit: BoxFit.contain,
                        )
                      ),
                    ),
                  ],
                ),
              ),
                ListView.builder(
                  itemCount: suggestions.length,
                  itemBuilder: (context,index) {
                    final suggestion=suggestions[index];
                    return ListTile(
                      title: Text(suggestion),
                      onTap: (){
                        setState((){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Searchfunctionality(SearchText: suggestion)));
                        });
                      },
                    );
                  }
                ),
            ],
          ),
        );
      },
    );
  }
}
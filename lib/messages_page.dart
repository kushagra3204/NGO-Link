import 'package:flutter/material.dart';
import 'package:ngo_link/view_more_ngo_page.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Messages"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.network("https://cdn-icons-png.flaticon.com/512/5324/5324519.png",height: 25,width: 25,),
                ),
                Text("No Messages yet.",style: TextStyle(fontSize: 25),),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewMoreNgoPage()));
        },
      ),
    );

  }
}

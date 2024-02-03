import 'package:flutter/material.dart';
import 'package:testapp/model/list_model.dart';
import 'package:testapp/model/listtile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var futureAlbum;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('FlutterApp'),
      ),
       body: ListView.builder(itemCount: 10,physics: BouncingScrollPhysics(),itemBuilder: (context, index) => UserTile(),)
//       body: FutureBuilder<Person>(
//   future: futureAlbum,
//   builder: (context, snapshot) {
//     if (snapshot.hasData) {
//       return Text(snapshot.data!.title);
//     } else if (snapshot.hasError) {
//       return Text('${snapshot.error}');
//     }

    
//     return Center(child: const CircularProgressIndicator());
//   },
// ),

    );
  }
}
import 'dart:convert';

import 'package:api_0/models/main_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class HomePage extends StatefulWidget {



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MainModel? mainData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();

  }


  @override
  Widget build(BuildContext context) {
    print(mainData);
    return Scaffold(
      appBar: AppBar(title: const Text('Api')),
      body: mainData != null
          ?  ListView.builder(
        itemCount: mainData!.posts!.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text('${mainData!.posts![index].id}')),
              title: Text('${mainData!.posts![index].title}',style: TextStyle(fontSize: 20),),
              subtitle: Text('${mainData!.posts![index].body}'),
            );
          },
      ): const Center(child: Text('No posts')),
    );
  }



  getData()async{
    String baseUrl = "https://dummyjson.com/posts";
    var response = await http.get(Uri.parse(baseUrl));

    if(response.statusCode==200){
      var mData = response.body;
      print(mData);

      var rawData = jsonDecode(mData);
      mainData = MainModel.fromJson(rawData);
      setState(() {

      });
    }
  }
}

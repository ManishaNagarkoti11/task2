import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart 'as http;
import 'package:task2/details/userdetail.dart';
import 'package:task2/widgets/usercard.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List users=[];
  Future<List> getPostFromServer() async{
    try {
      http.Response response = await http.get(
          "https://raw.githubusercontent.com/ManishaNagarkoti11/task2/main/dummy%20file");
      if (response.statusCode == 200) {
        final List jsonDecodeData = jsonDecode(response.body);
        jsonDecodeData.forEach((element) {
          UserDetail user = UserDetail.fromJsonToInstance(element);
          users.add(user);
        });
        return users;
      } else {
        return [];
      }
    } catch (e) {
      throw e;
    }
  }
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
  appBar: AppBar(

  title: Text("Click to see detail of each person"),
  centerTitle: true,
  backgroundColor: Colors.lightBlueAccent,
  ),
      body:Container(

        child: FutureBuilder(
          future: this.getPostFromServer(),
          builder: (BuildContext context, AsyncSnapshot asyncSnapshot){
            //print(asyncSnapshot.hasError);
            if(asyncSnapshot.hasData){
              List data = asyncSnapshot.data;
              return ListView.builder(itemCount:data.length,
                  itemBuilder: (context ,int i)
                  {
                    //return Text("e");
                    return UserCard(
                      firstName:data[i].firstName,
                      lastName: data[i].lastName,
                      address: data[i].address,
                      phoneNo: data[i].phoneNo,
                    );
                  });
            }else if(asyncSnapshot.hasError){
              print(asyncSnapshot.error);
              return Container(
                alignment: Alignment.center,
                child: Text("Error"),
              );
            }else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

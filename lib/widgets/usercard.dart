
import 'package:flutter/material.dart';
import 'package:task2/details/argument.dart';
import 'package:task2/widgets/passingargument.dart';
class UserCard extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String address;
  final String phoneNo;
  UserCard({this.firstName, this.lastName, this.address, this.phoneNo});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:20.0 ,vertical: 20.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      //  border:Border.all(color: Colors.black,width:3.0,style: BorderStyle.solid),
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialButton(onPressed: (){
            Navigator.pushNamed(
            context,
             PassArgumentsScreen.routeName,
             arguments: ScreenArguments(
             "$firstName",
             "$lastName",
              "$address",
              "$phoneNo",
               ),
             );
           },
            color: Colors.white,
            child: Column(
              children: [
                Text("Username: $firstName",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10.0,),
                Text("Address: $address",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
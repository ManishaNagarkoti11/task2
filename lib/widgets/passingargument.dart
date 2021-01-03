import 'package:flutter/material.dart';
class PassArgumentsScreen extends StatelessWidget {
  static const routeName ='/passArguments';
  final String firstName;
  final String lastName;
  final String address;
  final String phoneNo;
  const PassArgumentsScreen({
    Key key,
    @required this.firstName,
    @required this.lastName,
    @required this.address,
    @required this.phoneNo,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.symmetric(horizontal:20.0 ,vertical: 20.0),
    padding: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12.0),
    ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("Firstname: ${firstName} ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
           SizedBox(height: 10.0,),
           Text("Lastname: ${lastName} ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text("Address: ${address},",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 10.0,),
             Text("Phoneno: ${phoneNo} ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 10.0,),
              ],
           ),
         ),
     );
  }
}
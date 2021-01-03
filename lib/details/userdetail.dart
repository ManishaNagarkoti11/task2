

class UserDetail{
  final String firstName;
  final String lastName;
  final String address;
  final String phoneNo;

  UserDetail({this.firstName, this.lastName, this.address, this.phoneNo});
  factory UserDetail.fromJsonToInstance(Map<String,dynamic>data){
    return UserDetail(
      firstName: data['firstName'],
      lastName: data['lastName'],
      address: data['address'],
      phoneNo: data['phoneNo'],

    );
  }
}
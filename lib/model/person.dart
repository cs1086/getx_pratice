import 'package:equatable/equatable.dart';

class Person extends Equatable{
  String name="";
  int id=0;
  int age=0;
  @override
  // TODO: implement props
  List<Object?> get props =>[name];
  Person();
  Person.fromJson(Map<String,dynamic> json){
    name=json['name']??"";
    id=json['id']??0;
    age=json['age']??0;
  }

  Map<String,dynamic> toJson(){
    final map = Map<String,dynamic>();
    map['name']=name;
    map['id']=id;
    map['age']=age;
    return map;
  }

}
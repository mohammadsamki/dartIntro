import 'dart:io';

import 'package:test/test.dart';
// class Intro{
//   //  attr :> arg data 
//   String? name ;
//   //  constructor , initial :>
//   Intro(this.name);

//   // method :> func > behavior
//   String callName(){
//     return 'this is name from class $name';
//   }

// }

class Person{
  //  attr
  String?name;
  int? ssn;
  int? age;
  String? gender;
  double? tall;
  String? job;
  bool? relation;

// Constructor 
Person(this.name,this.ssn,this.age,this.gender,this.tall,this.job,this.relation);

void info(){
print('name: $name');
print('ssn: $ssn');
print('age: $age');
print('gender: $gender');
print('tall: $tall');
print('job: $job');
print('Relation: $relation');

}
void updateInfo(){
  print('update the person data ');
  print('update the name : $name');
  name = stdin.readLineSync();
    print('update the job : $job');
  name = stdin.readLineSync();
    print('update the gender : $gender');
  name = stdin.readLineSync();
      while (true) {
        
      
      if(ssn == ssn){
          try {
                        print('update the SSN : $ssn');
                        ssn = int.parse(stdin.readLineSync()!);
                        
                } catch (e) 
                {
                  print('enter a valid Ssn');
                  continue;
                }
      }
      
      if(age == age){
      try {
              print('update the age : $age');
              age = int.parse(stdin.readLineSync()!);
      } catch (e) 
      {
        print('enter a valid age');
                  continue;

      }
      }
  if(tall==tall){
      try {
              print('update the tall : $tall');
              tall = double.parse(stdin.readLineSync()!);
      } catch (e) 
      {
        print('enter a valid tall');
                  continue;

      }
  }
  if(relation ==relation) {
      try {
              print('update the relation: $relation');
               relation = bool.parse(stdin.readLineSync()!);
      } catch (e) 
      {
        print('enter a valid relation');
                  continue;

      }
  }
          break;
      }
    info();
  

}



}

void main() {

  // String address='' ;
  // address= stdin.readLineSync()!;
  // print(address.length);
  // if(address.length <=6){
    
  // }


List allPersons =[];
  while(true){
    print('welcome to our app ');
    print('1- create a new person');
    print('2- show all persons');
    print('3- exit');
    String? choice = stdin.readLineSync();

    if(choice == '1'){
      print('enter the person name');
      String? name= stdin.readLineSync();
       print('enter the person gender');
      String? gender= stdin.readLineSync();
       print('enter the person job');
      String? job= stdin.readLineSync();
      int?ssn;
      int? age;
      double? tall;
      bool? realation;
      while (true) {
        
      
      if(ssn == null){
          try {
                        print('enter the user Ssn');
                        ssn = int.parse(stdin.readLineSync()!);
                        
                } catch (e) 
                {
                  print('enter a valid Ssn');
                  continue;
                }
      }
      
      if(age == null){
      try {
              print('enter the user age');
              age = int.parse(stdin.readLineSync()!);
      } catch (e) 
      {
        print('enter a valid age');
                  continue;

      }
      }
  if(tall==null){
      try {
              print('enter the user tall');
              tall = double.parse(stdin.readLineSync()!);
      } catch (e) 
      {
        print('enter a valid tall');
                  continue;

      }
  }
  if(realation ==null) {
      try {
              print('enter the user relation');
               realation = bool.parse(stdin.readLineSync()!);
      } catch (e) 
      {
        print('enter a valid relation');
                  continue;

      }
  }
          break;
      }
      print('*'*50);
      Person person = Person(name, ssn, age, gender, tall, job, realation);
      person.info();
      allPersons.add(person);



    }
    else if(choice == '2'){
      //  task print all the user info in good way 
      // print(allPersons);
      print('--'*50);
      for( var i =0; i < allPersons.length;i++){
      print('this is person number ${i+1}');

        print('person name : ${allPersons[i].name}');
        //  print the person name  (show a ;ist of persons name )
        //  the user can choice the person name and then display all the person information
      }
      print('*'*50);
      print('choice the person number to display his information');
      int? choicePerson;
      while (true) {
         try {
        print('enter a valid index ');

      choicePerson = int.parse(stdin.readLineSync()!);
      if(choicePerson> allPersons.length){
        print('enter a valid index ');
      choicePerson = int.parse(stdin.readLineSync()!);
        
      }
      else{
        break;
      }
        
      } catch (e) {
        print('wrong number');
        
      }
      }
      print('='*50);
      print('this is the person info ');

      allPersons[choicePerson-1].info();
      print('1- to update person  information');
  print('2- delete person ');
  var removeOrUpdate = int.parse(stdin.readLineSync()!);
  if(removeOrUpdate == 1){
    allPersons[choicePerson-1].updateInfo();
  }
  else if (removeOrUpdate == 2 ){

      while (true) {
      print('do you want to remove this person y/n');

        var removeOrNot = stdin.readLineSync();



        if(removeOrNot == 'y'){
          allPersons.remove(allPersons[choicePerson-1]);
      // allPersons.removeAt()
          print('person removed');
          break;

      }
      else if (removeOrNot == 'n'){
        break;

      }
      else{
        print('wrong choice');
      }
      }
  }

      
     


    }
    else if(choice == '3'){
      print('see you');
      break;
    }
    else{
      print('wrong choice');
    }

  }

  // String studentName='ali';
  // String TeacherName = 'sami';
  // Intro obj= Intro(studentName);
  // Intro obj1= Intro(TeacherName);


  // // print(obj.name);
  // print(obj.callName());
  // print(obj1.callName());
  

  //   cont in dart intro  
  //  if condition :>   to check if a condition is true and if it is true rn some code 

  //  if ( condition :> to check if a condition is true){
  // code 
  // }
  //  else {
  // }
  //  loops :>
  // bool condition = true;
//   int checkNumber = 2;

//   if (checkNumber >8){
// print('the condition is true in just if');
//   }
//   else if (checkNumber >3){
// print('the condition is true in else if');

//   }
//   else{
//     print('the condition is false');
//   }
// //////////////////////////////////////////////////////////////////
//  loop :>  repate the a code while the condition is true
//  for loop  we know the number of the loops 
//  for (initial ; condition ; ++ || --){
// }
// for (int i = 0;i<=10;i++ ){
//   //  continue loop:> skip 1 loop only 
//   if(i==3){
//     continue;
    
//   }

//   //  break loop :> distroy loop 
//   if (i==6){
//     break;
//   }
//   print(i);
// }
//  while loo[ :> reapeat the a code while the condition is true 
// bool isTrue=true;
// while (true) {
//   print('hello in dart intro please inter your number to guess ');
//   //  null safty in dart  :> 
//   String? guessNumber= stdin.readLineSync();
//   if (guessNumber =='5'){
//     print('you won the number was 5');
//     break;
//   }
//   else{
//     print('oh no you loos -_-');
//   }

// }
//  do while :> run code any wah for 1 time 
// bool isTrue= false;
// do {
//   print('hi iam in do while');
//   String? guessNumber= stdin.readLineSync();
//   if(guessNumber=='5'){
//     print('you won the number was 5 change to false ');
//     isTrue=false;
//     print('iam after ISTrue');
//   }
//   else if (guessNumber==10){
//     print('you won the number was 10 break');
//     break;
//     // print('iam after break');
//   }
//   else{
//     print('try again');
//   }
  
// } while (isTrue);
//  task :  search for a way to change the user input from string fo int
//  create simple app to take input from the user as number like example :
//  take the user name : as string
//  take from the user how many tie he want to print his name

//  function in dart :>  a block of code that we deaclare it one time and use it as we wish after that
//  /? with declaration :> String? name ;
//  ! with the value direct  value!
//  function in dart :> a block of code that we deaclare it one
//  declaration : >> call the function
//  1 - return type 
//   1.1 with parameter
//   1.2 - without parameter
//  2 - void type 
//   2.1 with parameter
//   2.2 without parameter
//
 
//       return type
//  String getName(String? parms){
//   print('getName');
//   print('i am params: $parms');
//   String? userName = stdin.readLineSync();
//   return userName!;

//  }
//  getName();
// String lastName = getName('test');
// print('this is the last name value: $lastName');

//  void type > not accepting return value
//  initial value ??
//  order 
// void calculate({int x=0, int y=0}){
//   int? z = x+y;
//   print('i am z value: $z ');
// }
// print('welcome to my calculations app ');
// print('pass 2 number to sum them');
// var firstNumber;
// var secondNumber;

// while (true) {
//           if(firstNumber==null){
//                     try {
//                               print('inter the first number');
//                               firstNumber = int.parse(stdin.readLineSync()!);
//                             } catch (e) {
//                               print('inter a valid number');
//                               continue;
//                             }
//           }

//         //  second try
//         try {
//           print('second number: ');
//       secondNumber = int.parse(stdin.readLineSync()!);
//       break;

//         } catch (e) {
//         print('inter a valid number');
//         }
// }

// // while (true) {

  
// // }

// // calculate(y:secondNumber,x:firstNumber);




}

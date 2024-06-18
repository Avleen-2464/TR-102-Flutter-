class Restaurant{
  String name;
  int costFortwo;
// constructor
Restaurant(
  {
    required this.name,
    required this.costFortwo
  }
);

@override
 toString() => "$name | $costFortwo \t";

}

void main(){
   var restaurants =[
   Restaurant(name: "Belfrance Bakers and Chocolatiers ",
   costFortwo: 1200 ),
     Restaurant(
      name: "Barista Coffee ",
      costFortwo:250),
    Restaurant(
      name: "Bakes n Shakes ",
      costFortwo: 500 ),
       Restaurant(
      name: "Rishi Vegetarian Dhaba ",
      costFortwo: 400 )
   ];

  //  if we want to filter restaurants whose cost for two is greater than 300
  //  we will use higher order functions 
  // 1st -> Where
  var newlist= restaurants.where((restaurant) => restaurant.costFortwo>300).toList();
  print(newlist);
  // we can now use newlist to print the restaurants 
  //  2nd=> forEach
  print("Restaurants having cost for 2 greater than 300 are \n");
  restaurants.where((restaurant)=> restaurant.costFortwo>300).toList().forEach((best) => print(best));
  // this is how we can use higher order funstions to reduce the lines of code

}

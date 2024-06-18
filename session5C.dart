class Dish{
  String name;
  var price;

  Dish({required this.name , required this.price});

}

void main()
{
  var dishes=[
    Dish(name: "pizza", price:400 ),
    Dish(name: "Dal makhni", price: 300),
    Dish(name: "Pasta", price: 350),
    Dish(name: "Sandwich", price: 150)
  ];
  print("After Discount \n");
  dishes.map((dish) => dish.price * 0.5).toList().forEach((dish) => print(dish));


  var dishcart=[dishes[0], dishes[2]];
  // we use another higher order function reduce(
  var cartTotal=dishcart.map((e) => e.price).toList().reduce((value, element) => value+ element);
  print(cartTotal);
  }
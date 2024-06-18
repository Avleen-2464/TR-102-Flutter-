void main()
{
  var prices = [23.456 , 34.345, 67.34, 67.3546, 89.34, 34.346];
  // another higher order function is Map
  var stringPrices= prices.map((price) => "\u20b9 $price").toList();
  print(stringPrices);
  // another function is toStringAsfixed
  var newstringPrices= prices.map((price) => "\u20b9 ${price.toStringAsFixed(2)}").toList().forEach((price) => print(price));
  
}
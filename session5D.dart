void main()
{
  var prices = [23.456 , 34.345, 67.34, 67.3546, 89.34, 34.346];
  // Average of prices
  var total=prices.reduce((value, element) =>value+element);
  print(total/prices.length);
}
//no need to mention return type and specify the data type of arguments
 add( a,  b)
{
  var result=a+b;
  print("Result is : $result");
}

// using arrow function
// we cannot write multiple statements(only single statement is allowed) with arrow function
// subt (a,b) => return a+b;
// no need to use the keyword return 
subt (a,b) =>print( a-b);
printName(name) => print("hello , $name");
void main()
{
subt(3,5);
printName("avleen");
}
class Restaurant{
  String name;
  int costFortwo;
  double distance;
  String address;
  int discountPercent;
  String speciality;
  double rating;
    
  static int numOfRestaurant=0;
  
  Restaurant({
    required this.name,
    required this.costFortwo,
    required this.distance,
    required this.address,
    required this.discountPercent,
    required this.speciality,
    required this.rating
  })
  {
    numOfRestaurant++;
  }
  
  void displayRestaurant()
  {
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Restaurant : $name \t Rating : $rating");
    print("Speciality: $speciality \t \t\tCost for 2 : \u20b9$costFortwo");
    print("Address : $address \t Distance in Km: $distance");
    print("Flat $discountPercent% discount off on pre-booking ");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");

  }
  
}
void sortCostfor2(List<Restaurant> restaurants,num)
  {
    if (num==1){
    for (int i=0;i<restaurants.length-1;i++)
    {
      for (int j=0 ; j<restaurants.length-i-1;j++)
        { if(restaurants[j].costFortwo>restaurants[j+1].costFortwo)
            {
            Restaurant temp=restaurants[j];
            restaurants[j]=restaurants[j+1];
            restaurants[j+1]=temp;
            }
        }
    }
    }
    else if(num==0)
    {
      for (int i=0;i<restaurants.length-1;i++)
      {
      for (int j=0 ; j<restaurants.length-i-1;j++)
        { 
          if(restaurants[j].costFortwo<restaurants[j+1].costFortwo)
            {
            Restaurant temp=restaurants[j];
            restaurants[j]=restaurants[j+1];
            restaurants[j+1]=temp;
            }
        }

    }
    }
    else{
      print("Invalid Input");
    }
  }
  void sortByDistance(List<Restaurant> restaurants)
  {
  for (int i=0;i<restaurants.length-1;i++)
  {
    for (int j=0 ; j<restaurants.length-i-1;j++)
    { if(restaurants[j].distance>restaurants[j+1].distance)
        {
        Restaurant temp=restaurants[j];
        restaurants[j]=restaurants[j+1];
        restaurants[j+1]=temp;
        }
    }
  }
  }
  void sortByDiscount(List<Restaurant> restaurants)
  {
  for (int i=0;i<restaurants.length-1;i++)
  {
    for (int j=0 ; j<restaurants.length-i-1;j++)
    { if(restaurants[j].discountPercent>restaurants[j+1].discountPercent)
        {
        Restaurant temp=restaurants[j];
        restaurants[j]=restaurants[j+1];
        restaurants[j+1]=temp;
        }
    }
  }
  }
  void sortByPopuarity(List<Restaurant> restaurants)
  {
  for (int i=0;i<restaurants.length-1;i++)
  {
    for (int j=0 ; j<restaurants.length-i-1;j++)
    { if(restaurants[j].rating>restaurants[j+1].rating)
        {
        Restaurant temp=restaurants[j];
        restaurants[j]=restaurants[j+1];
        restaurants[j+1]=temp;
        }
    }
  }
  }

void main()
{
  var restaurants=[
    Restaurant(
      name: "Belfrance Bakers and Chocolatiers ",
      costFortwo: 1200 ,
      distance:5.6,
      address: "SCF 32 C Main Market, Sarabha Nagar, Ludhiana",
      discountPercent: 30,
      speciality: "Desserts and Italian", 
      rating: 4.7),
    Restaurant(
      name: "Barista Coffee ",
      costFortwo:250  ,
      distance:3.5,
      address: " Shop no.9 first floor phase 1 market, 141002, Duggri, Ludhiana",
      discountPercent: 40,
      speciality: "Desserts, Beverages and Snacks", 
      rating: 4.0),
    Restaurant(
      name: "Rishi Vegetarian Dhaba ",
      costFortwo: 400 ,
      distance:7.4,
      address: "SCF 32 C Main Market, Samrala Chowk, Ludhiana",
      discountPercent: 15,
      speciality: "Desserts and North Indian", 
      rating: 4.3),
      Restaurant(
      name: "Bakes n Shakes ",
      costFortwo: 500 ,
      distance:2.3,
      address: "SCF Model Town, Ludhiana",
      discountPercent: 0,
      speciality: "Bakery", 
      rating: 4.5)
  ];
  print("Restaurant List\n");
  for(int i=0 ; i<restaurants.length; i++)
  {
    restaurants[i].displayRestaurant();
  }
  // print("after Sorting on basis of Cost:Low To High:");
  // sortCostfor2(restaurants, 1);
  // print("Restaurant List\n");
  // for(int i=0 ; i<restaurants.length; i++)
  // {
  //   restaurants[i].displayRestaurant();
  // }
  print("after Sorting on basis of Distance");
  sortByDistance(restaurants);
  print("Restaurant List\n");
  for(int i=0 ; i<restaurants.length; i++)
  {
    restaurants[i].displayRestaurant();
  }

}


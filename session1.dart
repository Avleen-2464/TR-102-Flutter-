void main() {
  // Number: int, double

  // var, dynamic and Object
  int followers = 344;
  double viewTime = 4.5;

  print("followers: " + followers.toString());
  print("followers: $followers ViewTime: $viewTime");

  
  //String message = 'This is an awesome day';
  String? message = null; // Optional (which can hold null)
  print("Message is: $message");

  // Null Safety -> with ! operator s

  bool isInternetEnabled = true;
  bool isGPSEnabled = false;

  // Record
  var postData = ('Flutter', 150, user: "Av");
  print("postData type:" + postData.runtimeType.toString());

  print("Post Data: ${postData.$1}");
  print("Post Data: ${postData.$}");
  print("Post Data: ${postData.user}");
}

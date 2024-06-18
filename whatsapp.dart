void main(){
  // creating different variables of map type
   var contact1=
      {
        "contactName" : "avleen",
        "contactNumber": 1234567890,
        "profilepic": "img.url",
        "chatLock": true,
        "commonGroups":[]

      };
       var contact2=
      {
        "contactName" : "adam",
        "contactNumber": 1234567810,
        "profilepic": "image.url",
        "chatLock": false,
        "commonGroups":[]

      };
      var contact3=
      {
        "contactName" : "Av",
        "contactNumber": 1234567490,
        "profilepic": "imge.url",
        "chatLock": true,
        "commonGroups":[]

      };
      // creating a list of varibales(map)
  var contacts=[contact1 , contact2, contact3];
    
  // creating a list of maps of recent chats in whatsapp without actually creating different variables 
  var recentChats =[
      {
        "contactName":"avleen",
        "contactNumber":1234567890,
        "profilepic":"img.url",
        "chatLock":true,
        "media/docs" :[
          {
            "size-in-kb": 4,
            "filetype":"jpg",
            "RecieveDate":"24-03-2024",

          },
          {
            "size-in-kb": 200,
            "filetype":".doc",
            "RecieveDate":"27-03-2024",

          }
        ],
        "commonGroups":[]
      } ,
      {
        "contactName":"Av",
        "contactNumber":1234567490,
        "profilepic":"img.url",
        "chatLock":true,
        "media/docs" : [],
        "commonGroups":[]
      } 
      
   ];
  // a list showing updates 
  var Updates=[

    {
      "contactName":"Av",
      "time": "12:45",
      "media" : ["img1.url","img2.url" , "img3.url"]
    },
    {
      "contactName":"eve",
      "time": "10:45",
      "media" : ["img1.url","img2.url" , "img3.url"]
    }

  ];
  // list whatsapp containig all the lists (contacts , recentchats amnd updates)
  var whatsapp =[contacts , recentChats , Updates];
  // accessing data from nested list 
  print("contact number of 1st recent is ${whatsapp[1][0]["contactNumber"]}");
}
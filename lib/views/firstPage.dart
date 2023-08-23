import 'package:flutter/material.dart';
import 'package:idzo/widget/Searchfield.dart';



class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List<Map<String, dynamic>> Devices = [
    {
      "id": 1,
      "image": "assets/acer aspire 15.jpeg",
      "price": 40000,
      "offers": "12%",
      "name": "Acer aspire 15"
    },
    {
      "id": 2,
      "image": "assets/asus vivobook 16x.jpeg",
      "price": 37000,
      "offers": "10%",
      "name": "Asus vivobook"
    },
    {
      "id": 3,
      "image": "assets/hp 15.jpeg",
      "price": 25999,
      "offers": "12%",
      "name": "Hp 15 "
    },
    {
      "id": 4,
      "image": "assets/microsoftsurface.jpeg",
      "price": 85000,
      "offers": "5%",
      "name": " Microsoft surface"
    },
    {
      "id": 5,
      "image": "assets/realme book slim.jpeg",
      "price": 42000,
      "offers": "3%",
      "name": "Realmi notebook"
    },
  {
      "id": 6,
      "image": "assets/acer aspire 15.jpeg",
      "price": 40000,
      "offers": "12%",
      "name": "Acer aspire 15"
    },
    {
      "id": 7,
      "image": "assets/asus vivobook 16x.jpeg",
      "price": 37000,
      "offers": "10%",
      "name": "Asus vivobook"
    },
    {
      "id": 8,
      "image": "assets/hp 15.jpeg",
      "price": 25999,
      "offers": "12%",
      "name": "Hp 15 "
    },
    {
      "id": 9,
      "image": "assets/microsoftsurface.jpeg",
      "price": 85000,
      "offers": "5%",
      "name": " Microsoft surface"
    },
    {
      "id": 10,
      "image": "assets/realme book slim.jpeg",
      "price": 42000,
      "offers": "3%",
      "name": "Realmi notebook"
    },

  ];
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = Devices;
  }

  void _filterItems(String query) {
    setState(() {
      if (searchController.text.isEmpty) {
        filteredItems = Devices;
      } else {
        filteredItems = Devices.where((item) =>
            item["name"].toLowerCase().contains(searchController.text.toLowerCase())).toList();
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Search_field(
            onTap: () {
              setState(() {
                searchController.clear();
                filteredItems=Devices;
              });
            },
            controller: searchController,
            onChanged: _filterItems,
          ),
        ),
        Expanded(
            child: GridView.builder(
          itemCount: filteredItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.75),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              key: ValueKey(filteredItems[index]["id"]),
              // padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                 
               Container(child: Image(image: AssetImage(filteredItems[index]["image"]),fit: BoxFit.contain,),
               height: 150,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
               ),


                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            filteredItems[index]["name"],
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\u20B9' + filteredItems[index]["price"].toString(),
                              ),
                              CircleAvatar(
                                radius: 15,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.lightBlue,
                                ),
                              )
                            ],
                            
                          ),
                          Row(
                            children: [
                              CircleAvatar(child: Icon(Icons.percent,size: 10,),backgroundColor: Colors.green,radius: 10,),
                             SizedBox(width: 5,), Text(
                          filteredItems[index]["offers"],style: TextStyle(color: Colors.green),),
                          SizedBox(width: 5,),
                          Text("off",style: TextStyle(color: Colors.green),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //  Container(
                  //       padding: EdgeInsets.all(5),
                  //       decoration: BoxDecoration(
                  //           color: Colors.blueGrey,
                  //           borderRadius: BorderRadius.circular(15)),
                  //       child: Text(
                  //         filteredItems[index]["offers"],
                  //         style: TextStyle(fontSize: 14, color: Colors.white),
                  //       ),
                  //     ),
                ],
              ),
            );
          },
        ))
      ],
    );
  }
}

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  List<String> imageList = [
  'assets/images/image.png',
  'assets/images/image3.jpg',
  'assets/images/image4.jpg',
  'assets/images/image.png',
  'assets/images/image2.jpg',
  'assets/images/image3.jpg',
  'assets/images/image4.jpg',
];

late TabController category;
@override
  void initState() {
    // TODO: implement initState
    category = TabController(
      length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu,color: Color.fromARGB(255, 92, 172, 236),
              
                  ),
                
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/boy.jpg")
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.5),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Find Your \nExperience",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),
              ),
              ),
          SizedBox(height: 4.5,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TabBar(
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontSize: 20
              ),
              
              indicator: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30)
              ),
              controller: category,
              tabs: [
              Tab(
                text: "Experience",
              ),
              Tab(
                text: "Adventure",
              ),
              Tab(
                text: "Activities",
              ),
            ]),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 380,
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return SizedBox(
              width: 250,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 300,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      
                        image: DecorationImage(image: AssetImage(imageList[index]),fit: BoxFit.fill)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Extreme Surf",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 25),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on,color: Colors.grey,),
                          Text('Santa Curz',style: TextStyle(color: Colors.grey.shade400,fontSize: 18),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
            },
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "What Would You Like ?                     View All",style: TextStyle(fontWeight:FontWeight.normal,fontSize: 20),
              ),
              ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blue,
                  child: Center(
                    child: Icon(
                      Icons.sports_basketball_rounded
                    ),
                  ),
                  
                );
                
              },
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
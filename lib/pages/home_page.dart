import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id='home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem=[
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
    "assets/images/image5.jpg",
    "assets/images/image6.jpg",
    "assets/images/image7.jpg",
    "assets/images/image8.jpg",
    "assets/images/image9.jpg",
    "assets/images/image10.jpg",
    "assets/images/image11.jpg",
    "assets/images/image12.jpg",
    "assets/images/image13.jpg",
    "assets/images/image14.jpg",
    "assets/images/image15.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.menu  ),
        title: Center(
            child: Text('Apple Products')
        ),
        actions: [
          Padding(padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text("5")
              ),
            ),


          )
        ],

      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image1.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Life Style',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: CupertinoColors.white),),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Shop Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                    ),
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(child: GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 1,
              children: _listItem.map((item) => myList(item)).toList(),

            ))
          ],
        ),
      ),
    );
  }
  Widget myList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(item),
            fit:  BoxFit.cover
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Icon(Icons.favorite,color: Colors.red,size: 55,),
          ],
        ),
      ),
    );
  }
}

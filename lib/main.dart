import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//self imports
import 'package:mokshya/components/horizontal_listview.dart';
import 'package:mokshya/components/products.dart';
import 'package:mokshya/pages/cart.dart';

void main()
{
  runApp(MaterialApp(
    theme:ThemeData(
    primaryColor: Colors.deepPurple,
    ),
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ),);
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousal = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/background.jpg'),
          AssetImage('images/mokshya.png'),
          AssetImage('images/mokshya.png'),
          AssetImage('images/mokshya.png'),
          AssetImage('images/mokshya.png'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        dotSize: 5.0,
        indicatorBgPadding: 10.0,
        animationDuration: Duration(
          microseconds: 500,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Center(child: Text('Mokshya Tech'),),
        actions: [
          new IconButton(icon: Icon(Icons.search),
            onPressed:(){

          },),
          new IconButton(icon: Icon(Icons.shopping_cart),
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart(),
          ),
          );
          },),
        ],

      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Mokshya'),
              accountEmail: Text('Mokshya@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),
              ),
            //body
            InkWell(
              onTap: ()
              {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.deepPurple),

              ),
            ),
            InkWell(
              onTap: ()
              {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.deepPurple),

              ),
            ),
            InkWell(
              onTap: ()
              {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.deepPurple),

              ),
            ),
            InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart(),
                ),
                );
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart,color: Colors.deepPurple),

              ),
            ),
            InkWell(
              onTap: ()
              {},
              child: ListTile(
                title: Text('Favourite'),
                leading: Icon(Icons.favorite,color: Colors.deepPurple),

              ),
            ),
            Divider(
              color: Colors.deepPurple,
              thickness: 0.5,
            ),
            InkWell(
              onTap: ()
              {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.redAccent),

              ),
            ),
            InkWell(
              onTap: ()
              {},
              child: ListTile(
                title: Text('About Us'),
                leading: Icon(Icons.help,color: Colors.green),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          //calling widget image_carousal
          image_carousal,
          Padding(
            //padding widget for Categories
            padding: EdgeInsets.all(10.0),
            child: Text('Categories'),
          ),
          //horizontal list view remains here
          HorizontalList(),
          //padding widget for GridView
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Latest Products'),
          ),

          //gridview
          Container(
            height:400.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

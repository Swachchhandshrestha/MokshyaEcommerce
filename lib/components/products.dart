import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mokshya/components/horizontal_listview.dart';
import 'package:mokshya/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_list = [
    {
      "name": "Surviliance camera",
      "picture": "images/products/camera.jpg",
      "description": "This is Survillance Camera",
      "price": 5000,
      "quantity": 10
    },
    {
      "name": "Cake",
      "picture": "images/products/cake.png",
      "description": "This is Network Keyboard",
      "price": 1800,
      "quantity": 10
    },
    {
      "name": "Hard Disk",
      "picture": "images/products/Harddisk.jpg",
      "description": "This is Hard Disk",
      "price": 5000,
      "quantity": 10
    },
    {
      "name": "Network Keyboard",
      "picture": "images/products/network_keyboard.jpg",
      "description": "This is Network Keyboard",
      "price": 5000,
      "quantity": 10
    },
    {
      "name": "Attendence Device",
      "picture": "images/products/attendence_device.jpg",
      "description": "This is Attendance Device",
      "price": 5000,
      "quantity": 10
    },
    {
      "name": "Switch",
      "picture": "images/products/switch.jpg",
      "description": "This is switch",
      "price": 5000,
      "quantity": 10
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Single_product(
          product_name: products_list[index]['name'],
          product_picture: products_list[index]['picture'],
          product_description: products_list[index]['description'],
          product_price: products_list[index]['price'],
          product_quantity: products_list[index]['quantity'],
        );
      },
    );
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_description;
  final product_price;
  final product_quantity;

  Single_product(
      {this.product_name,
      this.product_description,
      this.product_picture,
      this.product_price,
      this.product_quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.deepPurple.shade100,
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                //passing the value of product from product.dart to product_details page
                  builder: (context) => ProductDetails(
                        product_details_name: product_name,
                        product_details_picture: product_picture,
                        product_details_price: product_price,
                        product_details_quantity: product_quantity,
                        product_details_description: product_description,
                      ),
              ),
            ),
            child: GridTile(
              child: Image(
                image: AssetImage(product_picture),
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    'RS:$product_price',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent),
                  ),
                  /*subtitle:Text('RS:$product_price',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        color: Colors.redAccent
                    ),
                  ), */
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

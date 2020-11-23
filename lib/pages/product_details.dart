import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_picture;
  final product_details_price;
  final product_details_quantity;

  ProductDetails(
  {
    this.product_details_name,
    this.product_details_picture,
    this.product_details_price,
    this.product_details_quantity
}
      );
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text('Product Details'),
        actions: [
          new IconButton(icon: Icon(Icons.search),
            onPressed:(){

            },),
          new IconButton(icon: Icon(Icons.shopping_cart),
            onPressed: (){

            },),
        ],

      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white60,
                child: Image(
                  image: AssetImage(widget.product_details_picture),
                ),
              ),
              footer:Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_details_name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                  ),),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text("RS:${widget.product_details_price}",
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
               Expanded(
                 child: MaterialButton(onPressed: ()
                 {},
                   elevation: 0.2,
                 color: Colors.deepPurple.shade50,
                 textColor: Colors.green,
                 child: Row(
                   children: [
                     Expanded(
                       child: Text('Available Quantity:${widget.product_details_quantity}',
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                           fontStyle: FontStyle.italic
                         ),
                       ),
                     ),
                   ],
                 ),
                 ),
               ),
            ],
          ),

          //buy now
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy Now'),
                ),
              ),
              IconButton(icon: Icon(Icons.shopping_cart,color: Colors.deepPurple,),onPressed: (){},),
              IconButton(icon: Icon(Icons.favorite_border,color: Colors.deepPurple,),onPressed: (){},),

            ],
          )
        ],
      ),
    );
  }
}

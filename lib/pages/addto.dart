import 'package:flutter/material.dart';
import 'prod.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: const Icon(Icons.add_to_photos),
                color: product.color,
              
              onPressed: () {},
            ),
          ),

        const SizedBox(
          height: 50,
        ),
          Expanded(
            
              child:Container(
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(18)),
              child: TextButton(
                onPressed: () {} ,               
                child: const Text(
                  'Buy Now',
                  style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ),
          
        ],
      ),
    );
  }
}
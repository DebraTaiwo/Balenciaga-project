import 'package:balenciaga/Screens/ShoppingPage.dart';
import 'package:balenciaga/components/constant.dart';
import 'package:flutter/material.dart';
import 'package:balenciaga/components/Bottom_Nav.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shop the Collection',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        leading: MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingPage()));
        }, child: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.archive_rounded))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image(
                      image: AssetImage('assets/bal2.jpeg'), fit: BoxFit.cover),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CardContainer(image: 'assets/bal2.jpeg'),

              CardContainer(image: 'assets/bal2.jpeg'),

              CardContainer(image: 'assets/bal2.jpeg'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text('MEN\'S DEFENDER SNEAKERS IN BIEGE', style: kHeadingStyle),
                SizedBox(height: 10),
                Text('Defender Sneakers in beige mesh and nylon',
                    style: kBodyTextStyle, textAlign: TextAlign.justify),
                SizedBox(height: 10),
                Text(
                  '\$1,090',
                  textAlign: TextAlign.justify,
                  style: kBodyTextStyle,
                ),
                SizedBox(height: 10),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SIZE',
                          style: kBodyTextStyle, textAlign: TextAlign.justify),
                      Text('SIZE GUIDE',
                          textAlign: TextAlign.end, style: TextStyle(decoration: TextDecoration.underline),),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {},
                  child: Text('ADD TO CART', style: kBodyTextStyle),
                  color: Color(0xFFB7EA18),
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

class CardContainer extends StatelessWidget {
  CardContainer({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:balenciaga/components/constant.dart';
import 'package:balenciaga/components/ReusableContainer.dart';
import 'package:balenciaga/Screens/CollectionPage.dart';
import 'package:balenciaga/components/Bottom_Nav.dart';

const title1 = 'BALANCIAGA NEW CAMPAIGN SPRING 2023';
const bodytext1 =
    'A new installments of Balanciaga\'s multi-phased campaign photographed by Chef Mitchell will be released in several waves.';

class CardItem {
  final String urlImage;
  final String title;
  final String price;

  const CardItem(
      {required this.urlImage, required this.title, required this.price});
}

class ShoppingPage extends StatefulWidget {
  @override
  State<ShoppingPage> createState() => _ShoppingPage();
}

class _ShoppingPage extends State<ShoppingPage> {
  List<CardItem> items = [
    CardItem(
        urlImage: 'assets/Adidas.jpg',
        title: 'ADIDAS HOODIES',
        price: '\$400.00'),
    CardItem(
        urlImage: 'assets/Tshirt.jpg',
        title: 'UNISEX T-SHIRTS',
        price: '\$530.00'),
    CardItem(
        urlImage: 'assets/Nike.jpg', title: 'SNEAKERS', price: '\$1030.00'),
    CardItem(
        urlImage: 'assets/wristwatch.jpg',
        title: 'WRISTWATCH',
        price: '\$700.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balenciaga'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140,
              width: double.infinity,
              child: AnotherCarousel(
                images: [
                  AssetImage('assets/bal1.jpeg'),
                  AssetImage('assets/bal2.jpeg'),
                  AssetImage('assets/bal3.jpeg'),
                  AssetImage('assets/bal4.jpeg'),
                  AssetImage('assets/bal5.jpeg'),
                ],
                dotSize: 6,
                indicatorBgPadding: 5.0,
              ),
            ),
            SizedBox(height: 8),
            Text(title1, style: kHeadingStyle, textAlign: TextAlign.justify),
            SizedBox(height: 8),
            Text(
              bodytext1,
              textAlign: TextAlign.justify,
              style: kBodyTextStyle,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReusableContainer(
                    labeltext: 'Sneakers',
                    image: ('assets/bal2.jpeg'),
                  ),
                  SizedBox(width: 10),
                  ReusableContainer(
                    labeltext: 'Nike',
                    image: ('assets/Nike.jpg'),
                  ),
                  SizedBox(width: 10),
                  ReusableContainer(
                    labeltext: 'Bags',
                    image: ('assets/pink bag.jpg'),
                  ),
                  SizedBox(width: 10),
                  ReusableContainer(
                    labeltext: 'T-Shirts',
                    image: ('assets/Tshirt.jpg'),
                  ),
                  SizedBox(width: 10),
                  ReusableContainer(
                    labeltext: 'Wristwatch',
                    image: ('assets/wristwatch.jpg'),
                  ),
                  SizedBox(width: 10),
                  ReusableContainer(
                    labeltext: 'Eyewear',
                    image: ('assets/eyewear.jpg'),
                  ),
                  SizedBox(width: 10),
                  ReusableContainer(
                    labeltext: 'Nikky',
                    image: ('assets/sneaker.jpg'),
                  ),
                  SizedBox(width: 10),
                  ReusableContainer(
                    labeltext: 'Adidas',
                    image: ('assets/Adidas.jpg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('SHOP THE COLLECTION/', style: kHeadingStyle),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 230,
                child: ListView.separated(
                  itemCount: 4,
                  itemBuilder: (context, item) => BuildCard(
                    item: items[item],
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, _) => SizedBox(width: 10),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}



Widget BuildCard({required CardItem item}) => Container(
      width: 200,
      height: 200,
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(item.urlImage),
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          SizedBox(height: 10),
          Text(item.title,style: TextStyle(fontWeight: FontWeight.bold),),
          Text(item.price),
        ],
      ),
    );

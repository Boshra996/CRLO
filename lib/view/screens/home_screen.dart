import 'package:carousel_slider/carousel_slider.dart';
import 'package:crlo/view/widgets/item1.dart';
import 'package:crlo/view/widgets/item2.dart';
import 'package:crlo/view/widgets/item3.dart';
import 'package:crlo/view/widgets/item4.dart';
import 'package:flutter/material.dart';



List cardList=[
  Item1(),
  Item2(),
  Item3(),
  Item4()
];
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class HomeScreen extends StatefulWidget {
  int _currentIndex=0;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends  State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        backgroundColor: Color(0xff7cc8c4),
        centerTitle: true,
        title:Text(
          "HOME",
          style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
          color:Colors.white,
          // Color(0xfff3766f),
        ),
        ),
      ),

      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card){
              return Builder(
                  builder:(BuildContext context){
                    return Container(
                      height: MediaQuery.of(context).size.height*0.30,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.white,
                        child: card,
                      ),
                    );
                  }
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(cardList, (index, url) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Color(0xff7cc8c4) : Colors.grey,
                ),
              );
            }),
          ),

        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // currentIndex: _currentIndex,
      // backgroundColor: colorScheme.surface,
      // selectedItemColor: colorScheme.onSurface,
      // unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
      // selectedLabelStyle: textTheme.caption,
      // unselectedLabelStyle: textTheme.caption,
      onTap: (value) {
        // Respond to item press.
        setState(() => _currentIndex = value);
      },
      items: [
        BottomNavigationBarItem(
          label:('Home'),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: ('Profile'),
          icon: Icon(Icons.person),
        ),
        BottomNavigationBarItem(
          label: ('Shop'),
          icon: Icon(Icons.account_circle),
        ),
        BottomNavigationBarItem(
          label: ('Cart'),
          icon: Icon(Icons.add_shopping_cart),
        ),
        BottomNavigationBarItem(
          label: ('More'),
          icon: Icon(Icons.article_outlined),
        ),
      ],
    ),
    );
    // );
  }
}




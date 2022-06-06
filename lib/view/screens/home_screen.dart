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
      )
     /* body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              // enlargeCenterPage: true,
              //scrollDirection: Axis.vertical,
              onPageChanged: (index, reason) {
                setState(
                      () {
                    _currentIndex = index;
                  },
                );
              },
            ),
            items: imagesList
                .map(
                  (item) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  elevation: 6.0,
                  shadowColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: Stack(
                      children: <Widget>[

                        Image.asset('assets/images/slidar1.png',fit: BoxFit.cover,width: double.infinity),
                        Image.asset('assets/images/slidar2.png',fit: BoxFit.cover,width: double.infinity)

                      ],
                    ),
                  ),
                ),
              ),
            )
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagesList.map((urlOfItem) {
              int index = imagesList.indexOf(urlOfItem);
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? Color.fromRGBO(0, 0, 0, 0.8)
                      : Color.fromRGBO(0, 0, 0, 0.3),
                ),
              );
            }).toList(),
          )
        ],
      ),*/
    );
    // );
  }
}




import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

/*final List<String> imgList = [
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/inspirational-quotes-c-s-lewis-1562000220.png',
  'https://i.pinimg.com/564x/62/1c/a6/621ca67a60e0de45a0828d9629375a92.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR-y-b5Apq6N1vWHX4Q1oxf6E6Y7EEoCElFaQ&usqp=CAU',
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/inspirational-quotes-hafez-1562000224.png?crop=1xw:1xh;center,top&resize=480:*',
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/inspirational-quotes-william-james-1562000241.png?crop=1xw:1xh;center,top&resize=480:*',
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/inspirational-quotes-william-james-1562000241.png?crop=1xw:1xh;center,top&resize=480:*'
];*/

void main() => runApp(MaterialApp(
      home: QuoteApp(),
      title: "QuotesApp",
    ));

/*class FullscreenSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QuotesApp')),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList.map((item) => Container(
              child: Center(
                  child: Image.network(item, fit: BoxFit.cover, height: height,)
              ),
            )).toList(),
          );
        },
      ),
    );
  }
}*/
/*final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  'No. ${imgList.indexOf(item)} image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
    ),
  ),
)).toList();*/
/*class CompilcatedImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Complicated image slider demo')),
      body: Container(
          child: Column(children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
          ],)
      ),
    );
  }
}*/
class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "Always forgive",
      "Clean your heart",
      "Be positive to others",
      "This is not done yet, keep working",
      "Never GiveUP"
    ];

    return Container(
      height: 200,
        child: CarouselSlider(
      options: CarouselOptions(),
      items: list
          .map((item) => Container(


                child: Column(
                  children: <Widget>[
                    Container(
                      height: 150,
                      child: Center(
                        child: Text(
                          item.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      color: Colors.amberAccent,
                    ),
                    SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Name of the Author",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 2,
                  ),
               /*   Text(
                    "Resource",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                  ),*/
                  ],
                ),


                color: Colors.white,
                height: 500,
              ))
          .toList(),
    ));
  }
}

class QuoteApp extends StatefulWidget {
  @override
  _QuoteAppState createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('QuotesApp'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            height: 450,
            decoration:
                BoxDecoration(border: Border.all(width: 5.0,color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      //ImageSliderDemo(),
                      BasicDemo(),
                      SizedBox(height: 50,),

                      Row(
                        children: <Widget>[
                          /*FlatButton(
                            onPressed: () => {},
                            color: Colors.orange,
                            padding: EdgeInsets.all(1.0),
                            child: Column( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.add),
                                Text("Add")
                              ],
                            ),
                          ),*/
                          IconButton(
                            icon: Icon(Icons.list),
                            onPressed: () {
                              debugPrint("List button is pressed");
                            },
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {
                              debugPrint("Add button is pressed");
                            },
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            onPressed: () {
                              debugPrint("Liked button is pressed");
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
     /* bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex:
        _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.wb_sunny),
            title: new Text('Sunshine'),
          ),
//             BottomNavigationBarItem(
//             icon: new Icon(Icons.lightbulb_outline),
//             title: new Text('Bulb'),
//           ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.local_offer),
            title: new Text('Tag'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.perm_identity),
            title: new Text('Person'),
          ),

        ],
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: new Icon(Icons.wb_sunny),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.lightbulb_outline),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.local_offer),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.perm_identity),
            title: new Text(''),
          ),
        ],

        currentIndex: _index, //0 index home
        onTap: (int newIndex){
          setState(() {
            _index = newIndex;
          });
        },

        type: BottomNavigationBarType.shifting,  //two types: (1)shifting and (2)fix by default fix
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightBlue,
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}

Size displaySize(BuildContext context) {
  debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}

/*class ImageSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(),
      items: imgList
          .map((item) => Container(
                child: Center(
                    child: Image.network(item, fit: BoxFit.cover, width: 1000)),
              ))
          .toList(),
    );
  }
}*/

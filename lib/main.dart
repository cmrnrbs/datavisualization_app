import 'package:flutter/material.dart';
import 'colors.dart';
import 'customcurveshape.dart';

class CardClass {
  String numberCount, title;

  CardClass(this.numberCount, this.title);
}

List<CardClass> myList = [
  CardClass('12', 'Repeatitions'),
  CardClass('25', 'Pushups'),
  CardClass('25', 'Pushups')
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Visualization App',
      home: Scaffold(
        body: Stack(
          children: <Widget>[MainContent()],
        ),
      ),
    ));

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      shadowColor: Colors.grey.withOpacity(0.4),
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.height,
                height: 36,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        left: 24,
                        top: 10,
                        child: Icon(
                          Icons.arrow_back,
                          size: 24,
                          color: iconColor,
                        )),
                    Positioned(
                        right: 24,
                        top: 10,
                        child: Icon(
                          Icons.search,
                          size: 24,
                          color: iconColor,
                        ))
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 70, top: 20),
                  child: Text(
                    'Statictics',
                    style: TextStyle(fontSize: 30, fontFamily: 'SlateBold'),
                  ))
            ],
          ),
        ),
        margin: EdgeInsets.only(top: 0),
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
          color: Colors.white,
        ),
      ),
    );
  }
}

class SecondTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 440,
      child: Stack(
        children: <Widget>[
          ClipPath(
              clipper: CustomShapeClipper(),
              child: Container(
                height: 440.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100)),
                  gradient: LinearGradient(
                    colors: [firstColor, secondColor],
                  ),
                ),
              )),
          ClipPath(
              clipper: CustomShapeClipperSecond(),
              child: Container(
                height: 300.0,
                decoration: BoxDecoration(color: Colors.white),
              )),
          Positioned(
              left: 70,
              top: 305,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                      text: new TextSpan(
                          style: new TextStyle(
                            fontSize: 65.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                        new TextSpan(
                            text: '495 ',
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'SlateBold')),
                        new TextSpan(
                            text: 'kcal',
                            style: new TextStyle(
                                fontWeight: FontWeight.normal,
                                color: thinTextColor,
                                fontSize: 45,
                                fontFamily: 'StemExtraLight'))
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 24,
                    width: MediaQuery.of(context).size.width - 94,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 3,
                          child: Text(
                            'Total Calories',
                            style:
                                TextStyle(color: thinSecondColor, fontSize: 15),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            child: Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [f, s],
          ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
    );
  }
}

class ThirdTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 630,
      child: Stack(
        children: <Widget>[
          ClipPath(
              clipper: CustomShapeClipperFour(),
              child: Container(
                height: 630.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100)),
                  gradient: LinearGradient(
                    colors: [f3, s3],
                  ),
                ),
              )),
          ClipPath(
              clipper: CustomShapeClipperThird(),
              child: Container(
                height: 620.0,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100)),
                  gradient: LinearGradient(
                    colors: [f2, s2],
                  ),
                ),
              )),
          Positioned(
              top: 500,
              left: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                      text: new TextSpan(
                          style: new TextStyle(
                            fontSize: 65.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                        new TextSpan(
                            text: '120 ',
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'SlateBold')),
                        new TextSpan(
                            text: 'min',
                            style: new TextStyle(
                                fontWeight: FontWeight.normal,
                                color: thinTextThirdColor,
                                fontSize: 45,
                                fontFamily: 'StemExtraLight'))
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 24,
                    width: MediaQuery.of(context).size.width - 94,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 3,
                          child: Text(
                            'Total Time',
                            style: TextStyle(
                                color: thinTextFourColor, fontSize: 15),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            child: Icon(
                              Icons.schedule,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [f3, s4],
          ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: bgColor,
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                ThirdTopBar(),
                SecondTopBar(),
                  ],
                ),
                BottomBar(),
              ],
            ),
          ),
          TopBar(),
          Positioned(
            right: 24,
            bottom: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 70, top: 50, bottom: 50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Training',
              style: TextStyle(
                  fontFamily: 'SlateBold', color: Colors.white, fontSize: 18)),
          CarItems()
        ],
      ),
    );
  }
}

class CarItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myList.length,
        itemBuilder: (context, int index) {
          return Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width * 0.37,
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      myList[index].numberCount,
                      style: TextStyle(
                          fontFamily: 'SlateBold',
                          fontSize: 45,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          myList[index].title,
                          style: TextStyle(color: cardText),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        index == 0
                            ? Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: circleColor),
                              )
                            : Container()
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: cardbgColor),
              ),
              SizedBox(
                width: 12,
              )
            ],
          );
        },
      ),
    );
  }
}

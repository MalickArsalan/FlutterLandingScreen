import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AlFardan(),
  ));
}

class AlFardan extends StatelessWidget {
  const AlFardan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg-landing-two.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              topLogo(context),
              Container(height: MediaQuery.of(context).size.height / 2.07),
              buildButton(context, 'SEND MONEY', 0xFFFFEE58, 0xFFFFFFFF, 1.0),
              buildButton(
                  context, 'LOGIN / REGISTER', 0xFFFFFFFF, 0xFFFFEE58, 0.7),
              Container(height: MediaQuery.of(context).size.height / 14.2),
              customNavigationBar(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget topLogo(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Image(
          image: AssetImage('images/logo.png'),
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / .3,
        ),
      ),
    );
  }
}

Widget buildButton(BuildContext context, String buttonText, int buttonColor,
    int borderColor, double buttonOpacity) {
  return Container(
    margin: EdgeInsets.only(bottom: 5),
    child: ButtonTheme(
      height: MediaQuery.of(context).size.height / 15.0,
      child: RaisedButton(
        color: Color(buttonColor).withOpacity(buttonOpacity),
        onPressed: () {},
        child: Container(
          width: MediaQuery.of(context).size.width / 1.56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (buttonText == 'LOGIN / REGISTER')
                Icon(
                  Icons.lock,
                  color: Colors.green,
                ),
              Text(
                '$buttonText',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Color(borderColor),
          ),
        ),
      ),
    ),
  );
}

Widget customNavigationBar(BuildContext context) {
  return GestureDetector(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 9,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildTabButton(context, 'rates', 'Rates'),
          buildTabButton(context, 'product', 'Products'),
          buildTabButton(context, 'location', 'Branches'),
          buildTabButton(context, 'more', 'More'),
        ],
      ),
    ),
  );
}

Widget buildTabButton(
    BuildContext context, String imageName, String buttonText) {
  return InkWell(
    onTap: () {},
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ImageIcon(
            AssetImage('images/$imageName.png'),
            color: Colors.white,
          ),
          Text(
            '$buttonText',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ),
  );
}

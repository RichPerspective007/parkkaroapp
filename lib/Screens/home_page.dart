        import 'package:flutter/material.dart';
        import 'package:flutter_svg/flutter_svg.dart';
        
        class MyHomePage extends StatefulWidget {
        @override
        _MyHomePageState createState() => _MyHomePageState();
        }
        
        class _MyHomePageState extends State<MyHomePage> {
        @override
        Widget build(BuildContext context) {
        // Figma Flutter Generator MyHomePage - FRAME
        
        return Container(
      width: 360,
      height: 800,
      decoration: BoxDecoration(
          color : Color.fromRGBO(217, 217, 217, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 10,
        left: 8,
        child: Container(
      width: 345,
      height: 121,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 345,
        height: 121,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
      color : Color.fromRGBO(51, 146, 234, 1),
  )
      )
      ),Positioned(
        top: 21.9296875,
        left: 39.5625,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 19,
        left: 284,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 22,
        left: 150,
        child: Text('Home', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Inter',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 65,
        left: 35,
        child: Text('Hello, User.', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Inter',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 143,
        left: 8,
        child: Container(
      width: 345,
      height: 60,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 345,
        height: 60,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
      color : Color.fromRGBO(238, 238, 238, 1),
      border : Border.all(
          color: Color.fromRGBO(32, 32, 32, 1),
          width: 1,
        ),
  )
      )
      ),Positioned(
        top: 17,
        left: 23,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 10,
        left: 210,
        child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
      border : Border.all(
          color: Color.fromRGBO(32, 32, 32, 1),
          width: 1,
        ),
  )
      )
      ),Positioned(
        top: 18,
        left: 254,
        child: Text('Book', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(80, 80, 80, 1),
        fontFamily: 'Inter',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 25,
        left: 229,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 17,
        left: 59,
        child: Text('Search..', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(80, 80, 80, 1),
        fontFamily: 'Inter',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    )
      ),Positioned(
        top: 266,
        left: 8,
        child: Container(
      width: 417,
      height: 157,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 135,
        height: 100,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      image : DecorationImage(
          image: AssetImage('assets/images/Rectangle8.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 0,
        left: 140,
        child: Container(
        width: 135,
        height: 100,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 280,
        child: Container(
        width: 137,
        height: 100,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 107,
        left: 0,
        child: Container(
        width: 135,
        height: 50,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 107,
        left: 140,
        child: Container(
        width: 135,
        height: 50,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 107,
        left: 280,
        child: Container(
        width: 135,
        height: 50,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 493,
        left: 8,
        child: Container(
      width: 417,
      height: 157,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 135,
        height: 100,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 140,
        child: Container(
        width: 135,
        height: 100,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 280,
        child: Container(
        width: 137,
        height: 100,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 107,
        left: 0,
        child: Container(
        width: 135,
        height: 50,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 107,
        left: 140,
        child: Container(
        width: 135,
        height: 50,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 107,
        left: 280,
        child: Container(
        width: 135,
        height: 50,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 720,
        left: 8,
        child: Container(
      width: 417,
      height: 157,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 135,
        height: 100,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 140,
        child: Container(
        width: 135,
        height: 100,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 280,
        child: Container(
        width: 137,
        height: 100,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 107,
        left: 0,
        child: Container(
        width: 135,
        height: 50,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 107,
        left: 140,
        child: Container(
        width: 135,
        height: 50,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 107,
        left: 280,
        child: Container(
        width: 135,
        height: 50,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 220,
        left: 8,
        child: Text('Recent Places', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 447,
        left: 8,
        child: Text('Last Parking Spaces', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 674,
        left: 8,
        child: Text('Best Choice', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 720,
        left: 8,
        child: Container(
      width: 345,
      height: 70,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 5,
        left: 0,
        child: Container(
        width: 345,
        height: 60,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
      color : Color.fromRGBO(32, 32, 32, 1),
  )
      )
      ),Positioned(
        top: 0,
        left: 15,
        child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color : Color.fromRGBO(217, 217, 217, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(70, 70)),
  )
      )
      ),Positioned(
        top: 19,
        left: 30,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 22,
        left: 117,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 20,
        left: 277,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 22,
        left: 197,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 379,
        left: 18,
        child: Text('Parking Name', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(117, 117, 117, 1),
        fontFamily: 'Inter',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 393,
        left: 18,
        child: Text('Street Name', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(117, 117, 117, 1),
        fontFamily: 'Inter',
        fontSize: 8,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 404,
        left: 18,
        child: Text('Open', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 180, 0, 1),
        fontFamily: 'Inter',
        fontSize: 8,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 404,
        left: 112,
        child: Text('Full', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(180, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: 8,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 381,
        left: 112,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 227,
        left: 180,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 454,
        left: 253,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 681,
        left: 155,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),
        ]
      )
    );
        }
        }
        
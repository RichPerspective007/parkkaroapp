import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parkeaseapp/Constants/constants.dart';
class ParkingSpaceScreen extends StatefulWidget {
  const ParkingSpaceScreen({super.key});

  @override
  State<ParkingSpaceScreen> createState() => _ParkingSpaceScreenState();
}

class _ParkingSpaceScreenState extends State<ParkingSpaceScreen> {
  @override
  Widget build(BuildContext context) {
    double scrWidth = Constants.screenWidth(context);
    double scrHeight = Constants.screenHeight(context);
    return Container(
        width:double.infinity,
        height:double.infinity,
        color:Color.fromARGB(100, 57, 57, 57),
        child: Column(
          children:[Container(
            margin:EdgeInsets.fromLTRB(10, 35, 10, 10),
            height:scrHeight/1.3,
            width:scrWidth-20,
            color:Colors.transparent,
            child:SingleChildScrollView(
              child: Row(children: [
                Column(children: [
                  for(int i=1;i<=20;i++)
                    _buildParkSlots(i)
                ],),
                Column(children: [SizedBox(width:50),
                  for(int i=1;i<=20;i++)
                    Container(
                      height:50,
                      width:50,
                      alignment: Alignment.center,
                      child: SvgPicture.asset('assets/images/road.svg')),
                  SizedBox(width:50),
                ],),
                Column(children: [
                  for(int i=1;i<=20;i++)
                    _buildParkSlots(i)
                ],)
              ]),
            ),
          ),Container(
            margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
            height:scrHeight/8,
            width:scrWidth-20,
            decoration: BoxDecoration(color:Colors.blue, borderRadius: BorderRadius.circular(25)),
          ),const SizedBox(height:2),Container()]
        ),
    );
  }
  Color _containerColor = const Color.fromARGB(255, 38, 138, 41);
  void _changeColor() {
    setState(() {
      // Change the color of the container
      if (_containerColor == Colors.blue)
        _containerColor = Color.fromARGB(255, 33, 157, 37);
      else
        _containerColor = Colors.blue;
    });
  }
  Widget _buildParkSlots(int slotID){
    var slotBookingStatus;
    if (slotID%2 == 0)
      slotBookingStatus = true;
    else
      slotBookingStatus = false;
    if (slotBookingStatus)
    {
      return Column(
        children: [
          Container(
            width:135,
            height:50,
            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15)),
          ),
          SizedBox(height:10),
        ],
      );
    }
    else{
      return GestureDetector(
        onTap: () {
          _changeColor();
        },
        child: Column(
          children: [
            Container(
              width: 135,
              height: 50,
              decoration: BoxDecoration(color: _containerColor,borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text('BOOK',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),)
              )

            ),
            SizedBox(height:10),
          ],
        ),
      );
    }
  }
}
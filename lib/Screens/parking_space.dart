import 'package:flutter/material.dart';

class ParkingSpaceScreen extends StatefulWidget {
  const ParkingSpaceScreen({super.key});

  @override
  State<ParkingSpaceScreen> createState() => _ParkingSpaceScreenState();
}

class _ParkingSpaceScreenState extends State<ParkingSpaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration:const BoxDecoration(color: Color.fromARGB(53, 53, 53, 100)),
      child: Scaffold(
        body:Row(children: [Container(
          margin:EdgeInsets.all(10),
          height:double.infinity,
          width:136,
          color:Color.fromARGB(53, 53, 53, 100),
          child: Column(
            children: [
              for(int i=1;i<=10;i++)
                _buildParkSlots(i)
            ],
          ),
        ),SizedBox(),Column(),SizedBox(),Column()],)
      ),
    );
  }
  Color _containerColor = Colors.greenAccent;
  void _changeColor() {
    setState(() {
      // Change the color of the container
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
      return Container(
        width:135,
        height:50,
        decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15)),
      );
    }
    else{
      return GestureDetector(
        onTap: () {
          _changeColor();
        },
        child: Container(
          width: 135,
          height: 50,
          decoration: BoxDecoration(color: _containerColor,borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text('Book',style: TextStyle(color: Colors.white),)
          )

        ),
      );
    }
  }
}
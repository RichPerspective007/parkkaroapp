import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:parkeaseapp/Screens/qr_screen.dart';
import 'package:parkeaseapp/main.dart';

class PayAndBook extends StatefulWidget {
  const PayAndBook({super.key});

  @override
  State<PayAndBook> createState() => _PayAndBookState();
}

class _PayAndBookState extends State<PayAndBook> {
  TimeOfDay selectedTime = TimeOfDay.now();
  int quantity = 0;
  double rate = 50.0;
  double totalPrice = 0.0;
  String parkLocId = "parkkol0001";
  String userID = "u16901622017";
  int bookCount = 876;
  String carNumberPlate = "wb12345678";
  
  TimeOfDay addHoursToTime(TimeOfDay time, int hoursToAdd) {
    final minutes = time.hour * 60 + time.minute;
    final newMinutes = minutes + (hoursToAdd * 60);
    final newHour = newMinutes ~/ 60;
    final newMinute = newMinutes % 60;
    return TimeOfDay(hour: newHour, minute: newMinute);
  }

  void incrementQuantity() {
    setState(() {
      quantity++;
      totalPrice = rate*quantity;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
        totalPrice = rate*quantity;
      }
    });
  }
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
        print(selectedTime);
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    double scrHeight = Constants.screenHeight(context);
    double scrWidth = Constants.screenWidth(context);
    print(selectedTime);
    return Scaffold(
      body:Stack(
        children: [
          Column(children: [
            SizedBox(height:25),
            Container(
              height:scrHeight*5.5/8,
              width:scrWidth-15,
              margin: EdgeInsets.only(left:7,right:7),
              decoration: BoxDecoration(color: Color(0xFFFFA41B),borderRadius: BorderRadius.circular(30)),
              child:Column(
                children: [
                SizedBox(height:30),
                Container(
                  width: 275,
                  height: 200,
                  decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/park.png'),
                          fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                SizedBox(height:15),
                const Row(children: [
                  SizedBox(width:50),
                  Column(children: [Text('Parking name',style:TextStyle(color:Colors.white,fontSize: 24)),Text('Street name',style:TextStyle(color:Colors.white,fontSize: 16))],),
                  SizedBox(width:50),
                  Text('Open',style:TextStyle(color:Colors.white,fontSize: 16))
                ],),
                SizedBox(height:5),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Starting Time: ${selectedTime.format(context)}',
                        style: TextStyle(fontSize: 18,color: Colors.white),
                      ),
                      SizedBox(width:5),
                      OutlinedButton(
                        onPressed: () => _selectTime(context),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(context.isDarkMode?Colors.blueGrey:Colors.white),), // Change the color here
                          // You can customize other button properties here as well, like text color, shape, etc.
                
                        child: Text('Pick a Time',style:TextStyle(color:context.isDarkMode?Colors.white:Color(0xFF3392EA))),
                      ),
                    ],
                  ),
                ),
                Text('Rate: $rate per hour',style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600)),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.remove,color:Colors.black),
                      onPressed: decrementQuantity,
                      iconSize: 24,
                      color: Colors.white,
                    ),
                    Text(
                      'Number of hours:   $quantity',
                      style: const TextStyle(fontSize: 16,color: Colors.white),
                    ),
                    IconButton(
                      icon: Icon(Icons.add,color:Colors.black),
                      onPressed: incrementQuantity,
                      iconSize: 24,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],)
            ),
            Container(
              height:scrHeight*2/8,
              width:scrWidth-15,
              margin: EdgeInsets.only(left:7,right:7),
              decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFF671F),
                  Color(0xFF14B265)
                ]
              ),borderRadius: BorderRadius.circular(30)),
              child: Center(
                child:Column(children: [
                  SizedBox(height:30),
                  Text('Pay  $totalPrice INR',style: const TextStyle(fontSize: 30,color: Color(0xFF06038D),fontWeight: FontWeight.w700),),
                  SizedBox(height:10),
                  Container(
                    height:50,
                    width:200,
                    child: ElevatedButton(onPressed:() {
                      
      Navigator.push(context, MaterialPageRoute(builder: (context) => QRCodeScreen(bookVal:'$bookCount,$userID,$parkLocId,$selectedTime,${addHoursToTime(selectedTime, quantity)},$carNumberPlate')));    
                }, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(context.isDarkMode?Colors.blueGrey:Colors.white),
                      foregroundColor: MaterialStateProperty.all<Color>(context.isDarkMode?Colors.white:Color(0xFF3392EA)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // Change the button shape
                    ),
                              ),
                      ),
                    child: Text('Proceed to pay',style:TextStyle(fontSize: 20))),
                  )
                ],),
              ),
            ),
          ],),
          Positioned(
            top: 20,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 36,
              color: Colors.white,
            ),
          ),
        ],
      )
    );
  }
}
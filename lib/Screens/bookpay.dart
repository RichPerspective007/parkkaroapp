import 'package:flutter/material.dart';
import 'package:parkeaseapp/Constants/constants.dart';
import 'package:dotted_border/dotted_border.dart';
class PayAndBook extends StatefulWidget {
  const PayAndBook({super.key});

  @override
  State<PayAndBook> createState() => _PayAndBookState();
}

class _PayAndBookState extends State<PayAndBook> {
  TimeOfDay selectedTime = TimeOfDay.now();
  int quantity = 0;
  double rate = 200.0;
  double totalPrice = 0.0;
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
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    double scrHeight = Constants.screenHeight(context);
    double scrWidth = Constants.screenWidth(context);
    return Scaffold(
      body:Stack(
        children: [
          Column(children: [
            SizedBox(height:25),
            Container(
              height:scrHeight*5/8,
              width:scrWidth-15,
              margin: EdgeInsets.only(left:7,right:7),
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),
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
                SizedBox(height:5),
                const Row(children: [
                  SizedBox(width:50),
                  Column(children: [Text('Parking name',style:TextStyle(color:Colors.white,fontSize: 24)),Text('Street name',style:TextStyle(color:Colors.white,fontSize: 16))],),
                  SizedBox(width:50),
                  Text('Open',style:TextStyle(color:Colors.white,fontSize: 16))
                ],),
                SizedBox(height:15),
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
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),), // Change the color here
                          // You can customize other button properties here as well, like text color, shape, etc.
                
                        child: Text('Pick a Time',style:TextStyle(color:Colors.blue)),
                      ),
                    ],
                  ),
                ),
                Text('Rate: $rate per hour',style:TextStyle(fontSize: 20,color: Colors.white)),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: decrementQuantity,
                      iconSize: 24,
                      color: Colors.white,
                    ),
                    Text(
                      'Number of hours:   $quantity',
                      style: const TextStyle(fontSize: 16,color: Colors.white),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: incrementQuantity,
                      iconSize: 24,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],)
            ),
            Container(
              height:scrHeight*2.5/8,
              width:scrWidth-15,
              margin: EdgeInsets.only(left:7,right:7),
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(30)),
              child: Center(
                child:Column(children: [
                  SizedBox(height:30),
                  Text('Pay  $totalPrice INR',style: const TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w700),),
                  SizedBox(height:10),
                  Container(
                    height:50,
                    width:200,
                    child: ElevatedButton(onPressed:() {
                      
                    }, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
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
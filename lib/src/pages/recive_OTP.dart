import 'package:flutter/material.dart';

import 'Home_Page.dart';
import 'new_Password.dart';

// página de datos

class reciveOTP extends StatelessWidget {
  const reciveOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 70.0,
              ),
              Container(
                margin: const EdgeInsets.only(right:40.0, left: 40.0),
                child: const Text('We have sent an OTP to your Mobile',
                    style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromRGBO(124, 125, 126, 1.0),
                    ),
                    textAlign: TextAlign.center),
              ),
              const SizedBox(height: 15.0),
              Container(
                margin: const EdgeInsets.only(right:35.0, left: 35.0),
                child: const Text(
                  'Please check your mobile number 071*****12 continue to reset your password',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      inputPassword(),
                      inputPassword(),
                      inputPassword(),
                      inputPassword(),
                    ]
              ),
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(height: 30.0,),
                  Container(
                    width: double.infinity,
                    height: 55.0,
                    margin: const EdgeInsets.only(left: 40.0, right:40.0 ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).primaryColor
                    ),
                    child:const TextButton(
                      onPressed: null,
                      child: Text('Next',
                      style: TextStyle(
                           fontSize: 18,
                            color: Colors.white,
                            //fontWeight: FontWeight.bold
                         ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child:const Text(
                          'Didnt Recive? ',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              )
                        ),
                      ),
                      Text(
                        'Click Here',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ],
        ),
      ),
    );
  }
}


Widget inputPassword(){ 
  return Container( 
    width: 60.0,
    height: 60.0,
    padding: const EdgeInsets.symmetric(horizontal: 0.0), 
    margin: const EdgeInsets.symmetric(horizontal: 8.0), 
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 223, 223, 223),
      borderRadius: BorderRadius.circular(10), 
    ), 
    child: TextFormField(
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.center,
      obscureText: true, 
      keyboardType: TextInputType.number,
      decoration: const InputDecoration( 
        border: InputBorder.none,
        hintText: '*',
        hintStyle: TextStyle(
          fontSize: 30.0,
          color: Color.fromARGB(255, 172, 172, 172)
        )
      ),
    ), 
  ); 
} 


import 'package:flutter/material.dart';

// página de datos

class newPassword extends StatelessWidget {
  const newPassword({Key? key}) : super(key: key);

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
                child: const Text('New Password',
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
                  'Please enter your email to receive a link to create a new password via email',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40.0,),
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
            ]
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AccessScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/askme.png'),
                fit: BoxFit.contain,
              ),
            ), // your other widgets here
        ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, bottom: 100),
                    child: MaterialButton(onPressed: (){},
                        child:
                        Container(
                          height: 50,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: HexColor('FE8235'),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Text('Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                      ),
                    ),
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, bottom: 100),
                    child: MaterialButton(onPressed: (){},
                      child:
                      Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: HexColor('FE8235'),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text('Sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),

    ],
      ),
    );
  }

}
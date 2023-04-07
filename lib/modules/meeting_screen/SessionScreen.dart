import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MeetingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: HexColor('FEF3E7'),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Upcomming Session',
                      style: TextStyle(
                        color: HexColor('573926'),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    SizedBox(height: 10,),
                    Text('Sahana V, Msc in Clinical Psychology',
                      style: TextStyle(
                        color: HexColor('573926'),
                        fontSize: 18,
                      ),

                    ),
                    SizedBox(height: 10,),
                    Text('7:30 PM - 8:30 PM',
                      style: TextStyle(
                        color: HexColor('573926'),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      child: Text(
                          'Join Now ',
                        style: TextStyle(
                          color: HexColor('FE8235'),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Text(
              'All Sessions',
              style: TextStyle(
                color: HexColor('00000'),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),

            ),
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => SessionCard(),
              separatorBuilder: (context, index) => SizedBox(),
              itemCount: 10
          ),
        ],
      ),
    );
  }
  Widget SessionCard()
  {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: HexColor('FEF3E7'),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Image(
                      image: AssetImage('images/avatar.png'),
                    ),
                    radius: 30,

                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gordan V',
                        style: TextStyle(
                          color: HexColor('573926'),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Msc in Clinical Psychology',
                        style: TextStyle(
                          color: HexColor('573926'),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.date_range_outlined),
                      Text('31st March ‘22',
                        style: TextStyle(
                          color: HexColor('573926'),
                          fontSize: 16,
                        ),

                      ),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined),
                      Text('7:30 PM - 8:30 PM',
                        style: TextStyle(
                          color: HexColor('573926'),
                          fontSize: 16,
                        ),

                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: HexColor('FE8235'),
                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      child: Text(
                        'Reschedule',
                        style: TextStyle(
                          color: HexColor('FBFBFB'),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 25,),
                  MaterialButton(
                    onPressed: (){},
                    child: Text(
                      'Join Now ',
                      style: TextStyle(
                        color: HexColor('FE8235'),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
import 'package:askme/layout/cubit/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

import 'cubit/app_states.dart';

class AskMeLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
         var cubit = AppCubit.get(context);
          return Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Padding(
                padding: const EdgeInsets.all(5),
                child: CircleAvatar(
                  child: Image(
                      image: NetworkImage('https://www.pngall.com/wp-content/uploads/5/Profile-Male-PNG.png'),
                  ),
                  radius: 20,
                ),
              ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                    color: Colors.brown,
                    size: 40,
                  ),
                    CircleAvatar(
                      backgroundColor: HexColor('FE8235'),
                      radius: 10,
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                        ),
                      ),

                    ),
            ]
                ),
              ),
            ],
              elevation: 0.0,
            ),
          body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar:
            BottomNavigationBar(
              items: cubit.BottomItems,
              currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.ChangeBottomNav(index);
              },
            ),

        );
        },
      ),
    );
  }

}
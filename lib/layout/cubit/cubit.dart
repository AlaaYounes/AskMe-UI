
import 'package:askme/modules/chat_screen/ChatScreen.dart';
import 'package:askme/modules/posts_screen/PostsScreen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../modules/home_screen/homeScreen.dart';
import '../../modules/meeting_screen/SessionScreen.dart';
import 'app_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit(): super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<BottomNavigationBarItem> BottomItems =
    [
      BottomNavigationBarItem(
          icon: Icon(Icons.home,
            size: 27,
          ),
          label: 'Home',
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.videocam,
            size: 27,
          ),
          label: 'VideoCall'
      ),
      // BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.chat_bubble,
      //       size: 27,
      //     ),
      //     label: 'Chat'
      // ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.people,
            size: 27,
          ),
          label: 'posts'),
    ];
  List <Widget> screens =[
    HomeScreen(),
    MeetingScreen(),
    PostsScreen(),
  ];
void ChangeBottomNav(int index){
  currentIndex = index;
  emit(AppChangeBottomNavState());
  }
}


import 'package:course_ligne/pages/favorites/favorites.dart';
import 'package:course_ligne/pages/home/home_content.dart';
import 'package:course_ligne/pages/notifications/notif.dart';
import 'package:course_ligne/pages/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var indexRef = StateProvider((ref) => 0);

class Home extends ConsumerWidget {
  // Remove statelesswidget by Consumer widget for give dynamic to code, remave that and add to Widget build(BuildContext context, " WidgetRef ref ")
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          // it an element that superimposed different widget depending on the view we give it
          index: ref.watch(indexRef),
          children: const [HomeContent(), Favorites(), Notif(), Profile()],
        ),
      ),

      //to describe bar navigation, Start
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple, // color bar navigation
        currentIndex: ref.watch(
            indexRef), // for give color to element selected (dynamic method)
        unselectedItemColor: Colors
            .grey, // for give color to element not select in bar navigation (to bottom  beacause home is element selected by default)
        //fuction during tap on an icon, it change color (think to current index create and also indexRef, their rules)
        onTap: (typeIndex) {
          ref.read(indexRef.notifier).state = typeIndex;
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notif'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      //to describe bar naviagtion, End
    );
  }
}

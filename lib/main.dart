import 'package:flutter/material.dart';
import 'package:flutter_for_beginners/home_page.dart';
import 'package:flutter_for_beginners/profile_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  //const MyApp({super.key});
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange,
        )
      ),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget{
  //const RootPage({super.key});
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  List<Widget> pages = const [
    HomePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),

      body: pages[currentPage],

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint('button br floating');
        },
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'home'
          ),
            NavigationDestination(
                icon: Icon(Icons.person),
                label: 'profile')
          ],

        onDestinationSelected: (int index){
            setState(() {
              currentPage = index;
            });
        },
        selectedIndex: currentPage,
      ),


    );
  }
}


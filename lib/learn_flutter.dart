import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = true;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('learn flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: (){debugPrint('Action 1');}, icon: const Icon(Icons.info_outline))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/p5t.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.orange,
                ),
                onPressed: (){
                  debugPrint('Elevated button');
                },
                child: const Text('Elevated button'),
            ),
            OutlinedButton(
              onPressed: (){
                debugPrint('Outlined button');
              },
              child: const Text('Outlined button'),
            ),
            TextButton(
              onPressed: (){
                debugPrint('Text button');
              },
              child: const Text('Text button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                      Icons.local_fire_department
                  ),
                  Text('Row widget'),
                  Icon(
                      Icons.local_fire_department
                  ),
                ],
              ),
              onTap: (){
                debugPrint('This is the row');
              },
            ),
            Switch(value: isSwitch, onChanged:
                (bool newBool){
              setState(() {
                isSwitch = !isSwitch;
              });
                }),
            Checkbox(value: isCheckbox, onChanged:
            (bool? newBool){
              setState(() {
                isCheckbox = newBool;
              });
            }),
            Image.network('https://wallpaperaccess.com/full/1909531.jpg'),
          ],
        ),
      ),
    );
  }
}

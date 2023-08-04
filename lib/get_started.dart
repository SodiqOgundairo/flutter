import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  bool isSwitch = false;
  bool isCheckbox = false;
  // bool? isCheckbox = false; this or above

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Started"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('actions');
            },
            icon: const Icon(Icons.info_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/Einstein.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.black),
            Container(
              color: Colors.blueGrey,
              width: double.infinity,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              child: const Center(
                child: Text(
                  'A message comes in',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: isSwitch ? Colors.green : Colors.blue),
                  onPressed: () {
                    debugPrint('button pressed');
                  },
                  child: const Text('Elevated Button'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: isCheckbox ? Colors.green : Colors.blue),
                  onPressed: () {
                    debugPrint('button pressed');
                  },
                  child: const Text('Outlined Button'),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint('button pressed');
                  },
                  child: const Text('Text Button'),
                ),
              ],
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('gesture detector');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwitch = newBool;
                    debugPrint('switched');
                  },
                );
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(
                  () {
                    // isCheckbox = newBool!; this or below
                    isCheckbox = newBool!;
                    debugPrint('checked');
                  },
                );
              },
            ),
            Image.network(
                'https://cdn.pixabay.com/photo/2022/09/24/16/13/albert-einstein-7476672_1280.png')
          ],
        ),
      ),
    );
  }
}

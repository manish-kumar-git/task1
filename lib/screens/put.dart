import 'package:flutter/material.dart';

import '../apiAuth/api_model.dart';

class PutMethod extends StatefulWidget {
  const PutMethod({super.key});

  @override
  State<PutMethod> createState() => _PutMethodState();
}
var callBack = Api();
TextEditingController controller = TextEditingController();
TextEditingController controller1 = TextEditingController();

class _PutMethodState extends State<PutMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post API'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'Edit Your Data',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Your Name',
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1.5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1.5),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ), const Center(
            child: Text(
              'OR',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              controller: controller1,
              decoration: InputDecoration(
                                hintText: 'About you',
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1.5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1.5),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                await callBack.putPersonalDetail(controller.text,controller1.text,context);
                setState(() {});
              },
              child: const Text(
                'Edit',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

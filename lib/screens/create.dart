import 'package:flutter/material.dart';

import '../apiAuth/api_model.dart';

class PostMethod extends StatefulWidget {
  const PostMethod({super.key});

  @override
  State<PostMethod> createState() => _PostMethodState();
}
var callBack = Api();
TextEditingController controller = TextEditingController();
TextEditingController controller1 = TextEditingController();

class _PostMethodState extends State<PostMethod> {
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
              'Post Some Data',
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
                await callBack.postPersonalDetail(controller.text,controller1.text,context);
                setState(() {});
              },
              child: const Text(
                'Create',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

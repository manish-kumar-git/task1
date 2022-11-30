import 'package:flutter/material.dart';

import '../apiAuth/api_model.dart';

class DeleteMethod extends StatefulWidget {
  const DeleteMethod({super.key});

  @override
  State<DeleteMethod> createState() => _DeleteMethodState();
}

var callBack = Api();
TextEditingController controller = TextEditingController();
TextEditingController controller1 = TextEditingController();

class _DeleteMethodState extends State<DeleteMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post API'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'Delete your personal Data',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                await callBack.deletePersonalDetail(
                    controller.text, controller1.text, context);
                setState(() {});
              },
              child: const Text(
                'Delete',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

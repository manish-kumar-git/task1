import 'package:flutter/material.dart';
import 'package:task1/apiAuth/api_model.dart';
import 'package:task1/apiAuth/get_model.dart';
import 'package:task1/constants/constants.dart';

class GetInfo extends StatefulWidget {
  const GetInfo({super.key});

  @override
  State<GetInfo> createState() => _GetInfoState();
}

TextEditingController controller = TextEditingController();
var _data;
var callBack = Api();
void formatNickname() {
  controller.text = controller.text.replaceAll(" ", "+");
}

@override
void dispose() {
  controller.dispose();
}

class _GetInfoState extends State<GetInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get API '),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'List of some Top universities in a specified country',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Country Name',
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
                formatNickname();
                await callBack.getUniversityDetail(controller.text);
                setState(() {});
              },
              child: const Text(
                'Search',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          responseObject == null
              ? const SizedBox()
              : Expanded(
                  child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              title: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(responseObject[index]['name']),
                                    Text(responseObject[index]['alpha_two_code'])
                                  ],
                                ),
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(responseObject[index]['domains'][0]),
                                  Text(responseObject[index]['web_pages'][0]),
                                ],
                              ),
                            ),
                            const Divider()
                          ],
                        );
                      }),
                )
        ],
      ),
    );
  }
}

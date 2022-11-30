import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task1/apiAuth/get_model.dart';
import 'package:http/http.dart' as http;
import 'package:task1/constants/constants.dart';

var responseObject;

class Api {
  Future getUniversityDetail(var country) async {
    final response = await http.get(
        Uri.parse('http://universities.hipolabs.com/search?country=${country}'));
    var responseData = jsonDecode(response.body);
    responseObject = responseData;
    if (response.statusCode == 200) {
      print(responseData);
      return responseData;
    } else {
      print(responseData);
      throw Exception('Failed to load Weather');
    }
  }


  Future postPersonalDetail(var title,var body,BuildContext context) async {
    final response = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),body: jsonEncode({
    "title": title,
    "body": body,
    "userId": 1,
  }));
    var responseData = jsonDecode(response.body);
    if (response.statusCode == 201) {
      showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                content: Text('Added Successfully'),
                actions: [
                  MaterialButton(
                    color: Colors.brown.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  
                    child: const Text('Continue',
                      style: TextStyle(
                          color: Colors.white),
                    ),
                  ),
                ],
              );
            });
      print(responseData);
      return responseData;
    } else {
      showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                content: Text(response.body),
                actions: [
                  MaterialButton(
                    color: Colors.brown.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  
                    child: const Text('Continue',
                      style: TextStyle(
                          color: Colors.white),
                    ),
                  ),
                ],
              );
            });
      print(responseData);
    }
  }


  Future putPersonalDetail(var title,var body,BuildContext context) async {
    final response = await http.put(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),body: jsonEncode({
    "title": title,
    "body": body,
    "userId": 1,
  }));
    var responseData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                content: const Text('Edited Successfully'),
                actions: [
                  MaterialButton(
                    color: Colors.brown.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  
                    child: const Text('Continue',
                      style: TextStyle(
                          color: Colors.white),
                    ),
                  ),
                ],
              );
            });
      print(responseData);
      return responseData;
    } else {
      showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                content: Text(response.body),
                actions: [
                  MaterialButton(
                    color: Colors.brown.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  
                    child: const Text('Continue',
                      style: TextStyle(
                          color: Colors.white),
                    ),
                  ),
                ],
              );
            });
      print(responseData);
    }
  }

  Future deletePersonalDetail(var title,var body,BuildContext context) async {
    final response = await http.put(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    var responseData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                content: const Text('Deleted Successfully'),
                actions: [
                  MaterialButton(
                    color: Colors.brown.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  
                    child: const Text('Continue',
                      style: TextStyle(
                          color: Colors.white),
                    ),
                  ),
                ],
              );
            });
      print(responseData);
      return responseData;
    } else {
      showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                content: Text(response.body),
                actions: [
                  MaterialButton(
                    color: Colors.brown.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  
                    child: const Text('Continue',
                      style: TextStyle(
                          color: Colors.white),
                    ),
                  ),
                ],
              );
            });
      print(responseData);
    }
  }
}

import 'package:api_app/player.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = [];
  @override
  void initState() {
    getHttp();
    super.initState;
  }

  void getHttp() async {
    try {
      var response =
          await Dio().get('https://www.balldontlie.io/api/v1/players');
      setState(() {
        data = response.data['data'];
      });
      print(data);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Players'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemCount: data.length,
            itemBuilder: ((BuildContext context, index) =>
                PlayerCard(value: data[index])),
            separatorBuilder: ((BuildContext context, index) => const Divider(
                  height: 30,
                ))),
      ),
    );
  }
}

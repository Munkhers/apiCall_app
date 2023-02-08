import 'package:flutter/material.dart';

class PlayerCard extends StatelessWidget {
  final value;
  const PlayerCard({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.person_rounded,
                      size: 40,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        value['first_name'],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        value['last_name'],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz_rounded),
            ],
          )
        ],
      ),
    );
  }
}

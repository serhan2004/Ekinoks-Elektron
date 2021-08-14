import 'package:flutter/material.dart';

class OdemeSayfasi extends StatelessWidget {
  const OdemeSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Cancel")),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {}, child: Text("Confirm")),
            ],
          )
        ],
      ),
    );
  }
}

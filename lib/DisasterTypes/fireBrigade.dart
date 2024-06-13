import 'package:flutter/material.dart';

class fireBrigade extends StatelessWidget {
  final Function? onMapFunction;
  const fireBrigade({Key? key, this.onMapFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
            InkWell(
              onTap: () {
                onMapFunction!('police+stations'); // Provide a specific location query
              },

              child: Container(
                height: 50,
                width: 50,
                color: Colors.white,
                  child: Text('Fire Brigade')

                ),
              ),


        ],
      );
  }
}
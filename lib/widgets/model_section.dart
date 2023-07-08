import 'package:flutter/material.dart';

class ModelSection extends StatelessWidget {
  ModelSection({Key? key}) : super(key: key);

  List modelList = [
    'The Heart',
    'The Brain',
    'The Eye',
    'The Ear',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: modelList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xff674aef)
                  : Color(0xff674aef).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(
            modelList[index],
          ),
          subtitle: Text(
            'Tap to view the model',
          ),
        );
      },
    );
  }
}

import 'package:brain_bytes/consts/person_class.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ListInformation extends StatefulWidget {
  final PersonInfo info;
  const ListInformation({super.key, required this.info});

  @override
  State<ListInformation> createState() => _ListInformationState();
}

class _ListInformationState extends State<ListInformation> {
  Color _currentColor = Colors.white;
  void _changeColor() {
    setState(() {
      _currentColor =
          _currentColor == Colors.white ? Colors.green : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onLongPress: () {
            var logger = Logger();
            logger.d("Logger is working!");
            _changeColor();
          },
          child: Card(
            color: _currentColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0))),
            child: ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage(widget.info.imgPath),
              ),
              title: Text(
                widget.info.name,
                style: const TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                widget.info.price,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              trailing: Text(widget.info.time),
            ),
          ),
        ),
      ],
    );
  }
}

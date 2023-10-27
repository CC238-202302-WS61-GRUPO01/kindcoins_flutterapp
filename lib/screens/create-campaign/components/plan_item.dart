import 'package:flutter/material.dart';

class PlanItem extends StatefulWidget {
  final String title;
  final String content;
  final String price;

  PlanItem({
    super.key,
    required this.title,
    required this.content,
    required this.price,
  });

  @override
  State<PlanItem> createState() => _PlanItemState();
}

class _PlanItemState extends State<PlanItem> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                widget.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.blueAccent),
                textAlign: TextAlign.left,
              ),
              Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
            ],
          ),
          const SizedBox(height: 4.0),
          Text(widget.content),
          const SizedBox(height: 4.0),
          Text(
            widget.price,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Color.fromARGB(255, 59, 232, 206)),
          )
        ],
      ),
    );
  }
}

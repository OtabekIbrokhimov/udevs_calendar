import 'package:flutter/material.dart';

class EditWidget extends StatelessWidget {
  final String title;
  final double height;
  final TextEditingController textEditingController;
  final bool needIcon;
  const EditWidget({
    super.key,
    required this.title,
    this.height = 42,
    required this.textEditingController,
    this.needIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        ),
        Container(
            padding: const EdgeInsets.all(5),
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(children: [
              Flexible(
                  child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(border: InputBorder.none),
              )),
              Visibility(
                  visible: needIcon,
                  child: const Icon(
                    Icons.location_on_rounded,
                    color: Color(0XFF056EA1),
                    size: 17,
                  )),
            ])),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'widgets/edit_widget.dart';

// ignore: must_be_immutable
class CreateScreen extends StatefulWidget {
  CreateScreen({Key? key}) : super(key: key);
  TextEditingController textEditingController = TextEditingController();

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EditWidget(
                      title: 'Event name',
                      textEditingController: widget.textEditingController,
                    ),
                    EditWidget(
                      height: 110,
                      title: 'Event description',
                      textEditingController: widget.textEditingController,
                    ),
                    EditWidget(
                      needIcon: true,
                      title: 'Event location',
                      textEditingController: widget.textEditingController,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: 75,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                color: const Color(0xffF6CFC6),
                              ),
                              const Spacer(),
                              GestureDetector(
                                child:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                onTap: () {},
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    EditWidget(
                      title: 'Event time',
                      textEditingController: widget.textEditingController,
                    ),
                    const Spacer(),
                    MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: const Color(0xff009FEE),
                      height: 42,
                      minWidth: double.infinity,
                      child: const Text(
                        "Add",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    )
                  ])),
        ));
  }
}

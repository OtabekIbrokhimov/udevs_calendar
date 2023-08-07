import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udevs_calendar/controller/blocs/home/home_bloc.dart';
import 'package:udevs_calendar/screens/home_screen/create_screen/create_screen.dart';
import 'package:udevs_calendar/screens/home_screen/delete_screen/delete_screen.dart';

import '../../controller/blocs/home/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sunday",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("28 September 2023",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 14,
                        color: Colors.black,
                      ))
                ],
              ),
            ],
          ),
          actions: const [
            InkWell(
                child: ImageIcon(AssetImage("assets/icons/notification.png"))),
          ],
        ),
        body: BlocProvider(
          create: (_) => HomeBloc(HomeInit()),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.parse("1950-01-01"),
                  lastDate: DateTime.parse("2950-01-01"),
                  onDateChanged: (DateTime value) {},
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Schedule",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w600)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CreateScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 30,
                                width: 132,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                  child: Text("+ Add Event",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white)),
                                ),
                              )),
                        ],
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DeleteScreen(),
                                ),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              height: 95,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 10,
                                    decoration: const BoxDecoration(
                                        color: Color(0XFF056EA1),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10))),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "Watching Football ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFF056EA1),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Text(
                                      "Manchester United vs Arsenal (Premiere League) ",
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0XFF056EA1),
                                      ),
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.timer,
                                        color: Color(0XFF056EA1),
                                        size: 15,
                                      ),
                                      Text(
                                        "15:00- 17:00",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0XFF056EA1),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.location_on_rounded,
                                        color: Color(0XFF056EA1),
                                        size: 15,
                                      ),
                                      Text(
                                        "Tashkent",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0XFF056EA1),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        shrinkWrap: true,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutteruitask/widgets/appbar_widget.dart';

import '../widgets/table_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarWidget(),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Table list",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    const TableView(
                      sel: true,
                      snn: "S.N",
                      namee: "Name",
                      addresss: "Address",
                      workingStatuss: "Working Status",
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const TableView(
                        sel: false,
                        addresss: "",
                        namee: "",
                        snn: "",
                        workingStatuss: ""),
                    const SizedBox(
                      height: 4,
                    ),
                    const TableView(
                      sel: false,
                      addresss: "",
                      namee: "",
                      snn: "",
                      workingStatuss: "",
                    ),
                    Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 40,
        width: 150,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF363263),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          // CircleBorder(side: BorderSide(color: Colors.black, width: 1)),
          onPressed: () {},
          child: const Text("Explore Here"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

          // selectedIconTheme: const IconThemeData(color: Colors.white),
          // unselectedIconTheme: const IconThemeData(color: Colors.white),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(color: Colors.white),
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          backgroundColor: const Color(0xFF3F3A76),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.task_alt_outlined), label: "Task"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_backup_restore_rounded),
                label: "status"),
            BottomNavigationBarItem(
                icon: Icon(Icons.task_alt), label: "profile"),
          ]),
    );
  }
}

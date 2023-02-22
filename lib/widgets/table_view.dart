import 'package:flutter/material.dart';

class TableView extends StatelessWidget {
  final bool sel;
  final String snn;
  final String namee;
  final String addresss;
  final String workingStatuss;
  const TableView(
      {super.key,
      required this.addresss,
      required this.namee,
      required this.snn,
      required this.workingStatuss,
      required this.sel});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Theme(
        data: ThemeData(
          dividerColor: Colors.transparent,
        ),
        child: DataTable(
            columnSpacing: 40,
            border: const TableBorder(
              right: BorderSide(
                color: Colors.brown,
                width: 1,
              ),
              left: BorderSide(
                color: Colors.brown,
                width: 1,
              ),
              top: BorderSide(
                color: Colors.brown,
                width: 1,
              ),
              bottom: BorderSide(
                color: Colors.brown,
                width: 1,
              ),
            ),
            columns: [
              DataColumn(
                label: Text(snn),
              ),
              DataColumn(
                label: Text(namee),
              ),
              DataColumn(
                label: Text(addresss),
              ),
              DataColumn(
                label: Text(workingStatuss),
              ),
            ],
            rows: [
              dataRoww(
                operstr: false,
                // context: context,
                selected: sel,
                sn: 1,
                name: "Sinamangal tube well",
                address: "sinamangal",
                workingStatus: "not operating",
              ),
              dataRoww(
                operstr: true,
                // context: context,
                sn: 2,
                name: "Sinamangal tube well",
                address: "sinamangal",
                workingStatus: " operating",
              ),
              dataRoww(
                operstr: true,
                // context: context,
                sn: 3,
                name: "Sinamangal tube well",
                address: "sinamangal",
                workingStatus: " operating",
              ),
              dataRoww(
                operstr: true,
                // context: context,
                sn: 4,
                name: "Sinamangal tube well",
                address: "sinamangal",
                workingStatus: " operating",
              ),
            ]),
      ),
    );
  }

  DataRow dataRoww({
    required bool operstr,
    // required BuildContext context,
    bool selected = false,
    required int sn,
    required String name,
    required String address,
    required String workingStatus,
  }) {
    return DataRow(
      selected: selected,
      color: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.purple.withOpacity(0.15);
        }
        return Colors.transparent;
      }),
      cells: [
        DataCell(
          Text(sn.toString()),
        ),
        DataCell(
          Text(name),
        ),
        DataCell(
          Text(address),
        ),
        DataCell(Container(
          height: 35,
          width: 120,
          decoration: BoxDecoration(
            color: operstr == true ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(workingStatus)),
          ),
        )),
      ],
    );
  }
}

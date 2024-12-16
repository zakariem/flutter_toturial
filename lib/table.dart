import 'package:flutter/material.dart';

class Tabless extends StatefulWidget {
  const Tabless({super.key});

  @override
  State<Tabless> createState() => _TablessState();
}

class _TablessState extends State<Tabless> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DataTable(
        columns: const [
          DataColumn(
            label: Text('ID'),
          ),
          DataColumn(
            label: Text('Full name'),
          ),
          DataColumn(
            label: Text('Age'),
          ),
          DataColumn(
            label: Text('Gender'),
          ),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(
                Text('1'),
              ),
              DataCell(
                Text('Zakarie Ahmed'),
              ),
              DataCell(
                Text('21'),
              ),
              DataCell(
                Text('Male'),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(
                Text('2'),
              ),
              DataCell(
                Text('ali hassan'),
              ),
              DataCell(
                Text('20'),
              ),
              DataCell(
                Text('Male'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

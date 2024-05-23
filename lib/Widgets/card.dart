import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final String courseTitle;
  final String semester;
  final String year;
  final String exam;

  const card(
      {super.key, required this.courseTitle, required this.semester, required this.year, required this.exam});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  child: Text(
                    "$semester",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("$courseTitle"),
                Text("$exam - $year"),
              ],
            ),
            Column(
              children: [
                Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    child: const Icon(Icons.arrow_circle_down_sharp,
                        color: Colors.black, size: 40),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

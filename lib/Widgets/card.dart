import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final courseTitle;
  final semester;
  final year;
  final exam;

  const card(
      {super.key, this.courseTitle, this.semester, this.year, this.exam});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                SizedBox(
                  child: Text(
                    "6th",
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

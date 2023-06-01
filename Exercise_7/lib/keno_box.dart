import 'package:flutter/material.dart';
import 'keno_row.dart';

class KenoBox extends StatelessWidget {
  final double widthKenoBox;
  final double heightKenoBox;

  const KenoBox(
      {super.key, required this.widthKenoBox, required this.heightKenoBox});

  @override
  Widget build(BuildContext context) {
    statistic.sort((a, b) => b.count.compareTo(a.count));
    return SizedBox(
      width: widthKenoBox,
      height: heightKenoBox,
      //color: Colors.yellow,
      child: Column(
        children: [
          KenoRow(
            keno: statistic[0],
            widthKenoRow: widthKenoBox,
            heightKenoRow: (heightKenoBox - 2) / 3,
            ratio: statistic[0].count / statistic[0].count,
          ),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
          KenoRow(
            keno: statistic[1],
            widthKenoRow: widthKenoBox,
            heightKenoRow: (heightKenoBox - 2) / 3,
            ratio: statistic[1].count / statistic[0].count,
          ),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
          KenoRow(
            keno: statistic[2],
            widthKenoRow: widthKenoBox,
            heightKenoRow: (heightKenoBox - 2) / 3,
            ratio: statistic[2].count / statistic[0].count,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class KenoRow extends StatelessWidget {
  final Keno keno;
  final double widthKenoRow;
  final double heightKenoRow;
  final double ratio;
  const KenoRow({
    super.key,
    required this.keno,
    required this.widthKenoRow,
    required this.heightKenoRow,
    required this.ratio,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthKenoRow,
      height: heightKenoRow,
      child: Row(
        children: [
          SizedBox(
            width: widthKenoRow / 5,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                keno.text,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),

          Expanded(
            child: SizedBox(
              child: Center(
                child: Align(alignment: Alignment.centerLeft,
                  child: Container(
                    width: widthKenoRow * (3 / 5) * ratio,
                    height: heightKenoRow / 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            width: widthKenoRow / 5,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${keno.count} lần',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Keno{
  final String text;
  final int count;

  Keno(this.text, this.count);
}

final List<Keno> statistic = [
    Keno('Chẵn', 5),
    Keno('Lẻ', 2),
    Keno('Hòa CL', 3)
  ];

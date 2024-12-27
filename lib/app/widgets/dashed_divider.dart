import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  const DashedDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          800 ~/ 10,
          (index) => Expanded(
                child: Container(
                  color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                  height: 1,
                ),
              )),
    );
  }
}

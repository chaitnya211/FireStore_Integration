import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(border: Border(left: BorderSide(width: 4))),
      padding:
      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tDashboardSearch,
              style: textTheme.headline2
                  ?.apply(color: Colors.grey.withOpacity(0.5),fontSizeFactor: 0.6)),
          const Icon(Icons.mic, size: 25),
        ],
      ),
    );
  }
}
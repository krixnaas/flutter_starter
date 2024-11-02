import 'package:flutter/material.dart';


class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    this.textColor,
    this.showActionBotton = true,
    required this.title,
    this.buttonTitle = "View all",
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionBotton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.apply(color: textColor),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionBotton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}

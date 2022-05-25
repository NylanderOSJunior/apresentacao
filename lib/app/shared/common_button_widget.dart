import 'package:flutter/material.dart';

class CommonButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final bool isDisabled;
  final String label;
  const CommonButtonWidget({
    Key? key,
    required this.onTap,
    this.isDisabled = false,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 170,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(label),
      ),
      onTap: onTap,
    );
  }
}

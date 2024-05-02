import 'package:flutter/material.dart';

class MyButtonSetting extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Widget child;
  const MyButtonSetting(
      {super.key,
      required this.title,
      required this.onTap,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary ,
                ),
              ),
              SizedBox(
                height: 20,
                child: child,
              )
            ],
          ),
        ),
      ),
    );
  }
}

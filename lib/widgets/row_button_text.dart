import 'package:flutter/material.dart';

class RowButtonText extends StatelessWidget {
  final String title;
  final IconData iconData;
  const RowButtonText({
    super.key, required this.title, required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 6),
      child: InkWell(
        onTap: (){},
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 56),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

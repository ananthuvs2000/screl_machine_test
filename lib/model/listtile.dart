import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.indigo.withOpacity(.70)
      ),
        child: ListTile(
          title: Text(''),
          subtitle: Text(''),
        ),
      ),
    );
  }
}
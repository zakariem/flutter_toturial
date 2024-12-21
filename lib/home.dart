// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.username,
  });
  final String username;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectableText('Wellcome to Home $username'),
    );
  }
}

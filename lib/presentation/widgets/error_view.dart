import 'package:flutter/material.dart';
import 'package:information_service/core/theme/app_styles.dart';

class ErrorView extends StatelessWidget {
  final String message;
  const ErrorView({super.key, required this.message});

  @override
  Widget build(BuildContext context) =>
      Center(child: Text(message, style: AppStyles.title));
}

import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_course/core/di/dependency_injection.dart';
import 'package:flutter_advanced_complete_course/core/routing/app_router.dart';
import 'package:flutter_advanced_complete_course/doc_doc_app.dart';

void main() {
  setUpGetIt();
  runApp(
    DocDocApp(
      appRouter: AppRouter(),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/category_bloc.dart';
import 'package:test_task/data/category_repository.dart';
import 'package:test_task/data/category_service.dart';

import 'pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test app',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: BlocProvider(
        create: (context) => CategoryBloc(
          const CategoryRepository(
            service: CategoryService(),
          ),
        )..add(GetCategories()),
        child: const HomePage(),
      ),
    );
  }
}

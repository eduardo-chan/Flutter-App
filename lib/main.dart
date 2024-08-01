import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/repository/user_repository.dart';
import 'presentation/screens/get_all_users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => UserRepository(
            apiUrl: 'https://noeaywzny9.execute-api.us-east-1.amazonaws.com/Prod/hello', // Reemplaza con tu URL
            //accessToken: 'your-access-token', // Reemplaza con tu token
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const UserListView(), // Cambia esto para mostrar tu vista
      ),
    );
  }
}
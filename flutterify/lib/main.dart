import 'package:flutter/material.dart';
import 'package:flutterify/domain/api/api_consts.dart';
import 'package:flutterify/domain/api/dio/token_manager.dart';
import 'package:flutterify/domain/api/service/auth_service.dart';

void main() async {
  // Create a TokenManager
  final tokenManager = TokenManager();

  // Create the auth service using your client credentials
  final authService = AuthService(
    clientId: ApiConsts.testClientId,
    clientSecret: ApiConsts.testClientSecret,
  );

  try {
    final tokenData = await authService.fetchClientCredentialsToken();
    print('Token data: $tokenData');
  } catch (e) {
    print('Error exchanging code for token: $e');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomeView(),
    );
  }
}

class MyHomeView extends StatelessWidget {
  const MyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

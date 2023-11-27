import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Container(
        // width: double.infinity,
        color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Text('data'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: const Text('data'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: const Text('data'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Text('data'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: const Text('data'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Text('data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

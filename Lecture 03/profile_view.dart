import 'package:flutter/material.dart';
import 'package:lecture_three/widgets/custom_chat_tile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomChatTile(
              message: "Kahan Ho?",
              time: "10:00 AM",
            ),
            CustomChatTile(
              name: "Riya Malik",
              message: "Kesi ho Bhae?",
              time: "11:00 PM",
            ),
          ],
        ),
      ),
    );
  }
}

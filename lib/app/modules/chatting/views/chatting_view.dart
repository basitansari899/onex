import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/chatting/views/widgets/chatting_app_bar.dart';
import 'package:onex/app/widgets/custom_icon_button.dart';
import '../controllers/chatting_controller.dart';

class ChattingView extends GetView<ChattingController> {
  const ChattingView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ChatAppbar(theme: theme),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildSenderBubble("Let's get lunch. How about pizza?", theme),
                _buildReceiverBubble(
                    "Let's do it! I'm in a meeting until noon.", theme),
                _buildSenderBubble(
                  "That's perfect. There's a new place on Main St I've been wanting to check out. I hear their Hawaiian pizza is awesome!",
                  theme,
                ),
                _buildReceiverBubble(
                  "I don't know why people are so anti-pineapple pizza. I kind of like it.",
                  theme,
                ),
              ],
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildSenderBubble(String text, TextTheme theme) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
        constraints: const BoxConstraints(maxWidth: 300),
        child: Text(
          text,
          style: theme.bodyMedium?.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildReceiverBubble(String text, TextTheme theme) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
        ),
        constraints: const BoxConstraints(maxWidth: 300),
        child: Text(
          text,
          style: theme.bodyMedium?.copyWith(color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.grey[200],
      child: Row(
        children: [
          CustomIconButton(
            icon: ImageAsset.camera,
            height: 24,
            onTap: () {},
          ),
          gapW12,
          CustomIconButton(
            icon: ImageAsset.appStore,
            height: 28,
            onTap: () {},
          ),
          gapW12,
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "iMessage",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomIconButton(
                    icon: ImageAsset.record,
                    height: 27,
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

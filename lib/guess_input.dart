import 'package:flutter/material.dart';

class GuessInput extends StatelessWidget {
  GuessInput({super.key, required this.onSubmitGuess});

  final void Function(String) onSubmitGuess;
  final TextEditingController _guessController = TextEditingController();
  final FocusNode _guessNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: .all(18),
            child: DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1.0,
                    offset: Offset(4.0, 4.0),
                  ),
                ],
              ),
              child: TextField(
                maxLength: 5,
                autofocus: true,
                controller: _guessController,
                focusNode: _guessNode,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  counterText: '',
                  border: OutlineInputBorder(
                    borderRadius: .zero,
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: .zero,
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: .zero,
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  hintText: 'Press enter to submit...',
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.grey.shade500,
                  ),
                ),
                onSubmitted: (_) {
                  _onSubmitGuess();
                },
              ),
            ),
          ),
        ),
        IconButton(
          padding: .zero,
          onPressed: () {
            _onSubmitGuess();
          },
          icon: Icon(Icons.arrow_upward_sharp, size: 50.0, color: Colors.black),
        ),
      ],
    );
  }

  void _onSubmitGuess() {
    onSubmitGuess(_guessController.text.trim());
    _guessController.clear();
    _guessNode.requestFocus();
  }
}

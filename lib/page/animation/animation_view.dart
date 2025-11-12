import 'package:flutter/material.dart';
import '../../model/animation_position.dart';
import '../../state/AppState.dart';
 

class AnimationView extends StatelessWidget {
  const AnimationView({super.key});

  static const double _step = 50;
  static const double _circleSize = 100;
  static const Duration _duration = Duration(milliseconds: 250);
  static const Curve _curve = Curves.easeInOut;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final appState = AppState.of(context);

    return Column(
      children: [
        Expanded(
          child: Container(
            color: colorScheme.surfaceContainer,
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: appState.animationPosition.top,
                  left: appState.animationPosition.left,
                  width: _circleSize,
                  height: _circleSize,
                  duration: _duration,
                  curve: _curve,
                  child: Card(
                    color: colorScheme.surfaceTint,
                    shape: const CircleBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 80,
          child: Center(
            child: Card(
              color: colorScheme.surfaceContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => appState.setAnimationPosition(AnimationPosition(top: appState.animationPosition.top, left: appState.animationPosition.left - _step)),
                      icon: const Icon(Icons.arrow_left),
                    ),
                    IconButton(
                      onPressed: () => appState.setAnimationPosition(AnimationPosition(top: appState.animationPosition.top, left: appState.animationPosition.left + _step)),
                      icon: const Icon(Icons.arrow_right),
                    ),
                    IconButton(
                      onPressed: () => appState.setAnimationPosition(AnimationPosition(top: appState.animationPosition.top - _step, left: appState.animationPosition.left)),
                      icon: const Icon(Icons.arrow_upward),
                    ),
                    IconButton(
                      onPressed: () => appState.setAnimationPosition(AnimationPosition(top: appState.animationPosition.top + _step, left: appState.animationPosition.left)),
                      icon: const Icon(Icons.arrow_downward),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

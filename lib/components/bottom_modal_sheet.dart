import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AppBottomSheet extends StatefulWidget {
  const AppBottomSheet({Key? key}) : super(key: key);

  @override
  State<AppBottomSheet> createState() => _AppBottomSheetState();
}

class _AppBottomSheetState extends State<AppBottomSheet> {
  // Custom states
  // _ denotes private variable/state
  int _modalHeight = 400;

  // Custom function
  void _setModelHeight() {
    setState(() {
      _modalHeight = 600;
    });
  }

  // Built-in stateful functions that needs to be override
  @override
  void initState() {
    super.initState();
    // code starts here
    Future.delayed(const Duration(seconds: 2), () {
      // Future delay awaits 2 seconds then run showModalBottomSheet(). This allows the app to finish loading.
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 400,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('Modal BottomSheet'),
                  ElevatedButton(
                    child: const Text('Close BottomSheet'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }

  @override
  void dispose() {
    // code start here
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Try const BottomSheet(),
    return BottomSheet(
      builder: (BuildContext context) {
        return Text(uppercase('hue', endWithPeriod: true));
      },
      onClosing: () {
        return;
      },
    );
  }
}

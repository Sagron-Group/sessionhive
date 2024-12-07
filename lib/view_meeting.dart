import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

class ViewMeeting extends StatelessWidget {
  final Call call;

  const ViewMeeting({super.key, required this.call});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Meeting')),
      body: Stack(
        children: [
          // Display video streams
          Positioned.fill(
            child: StreamVideoRenderer(call: call),
          ),
          // Action buttons
          Positioned(
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.mic),
                  onPressed: () {
                    call.toggleMicrophone();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Microphone toggled')),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.videocam),
                  onPressed: () {
                    call.toggleCamera();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Camera toggled')),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.call_end, color: Colors.red),
                  onPressed: () {
                    call.leave();
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

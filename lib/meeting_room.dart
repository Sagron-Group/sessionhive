import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

@NowaGenerated()
class MeetingRoom extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const MeetingRoom({super.key});

  void _leaveMeeting(BuildContext context) {
    JitsiMeet().hangUp();
    Navigator.pop(context); // Navigate back to the previous screen
  }

  void _toggleAudio(BuildContext context, bool isMuted) {
    JitsiMeet().setAudioMuted(isMuted);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(isMuted ? 'Audio Muted' : 'Audio Unmuted')),
    );
  }

  void _toggleVideo(BuildContext context, bool isMuted) {
    JitsiMeet().setVideoMuted(isMuted);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(isMuted ? 'Video Muted' : 'Video Unmuted')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            // Background or Video Stream Area
            Positioned.fill(
              child: Container(
                color: Colors.black,
                child: const Center(
                  child: Text(
                    'Video Streams Here',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            // Logo Positioned
            const Positioned(
              top: 45.0,
              left: 39.5,
              width: 314.0,
              height: 298.0,
              child: Image(
                image: AssetImage('assets/SessionHive Logo-No Background.png'),
                fit: BoxFit.cover,
              ),
            ),
            // Action Buttons Positioned at Bottom
            Positioned(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Participants Button
                  IconButton(
                    icon: const Icon(Icons.people, color: Colors.white),
                    onPressed: () {
                      JitsiMeet().retrieveParticipantsInfo();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Participants Info Retrieved')),
                      );
                    },
                  ),
                  // Chat Button
                  IconButton(
                    icon: const Icon(Icons.chat, color: Colors.white),
                    onPressed: () {
                      JitsiMeet().openChat();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Chat Opened')),
                      );
                    },
                  ),
                  // Toggle Audio Button
                  IconButton(
                    icon: const Icon(Icons.mic, color: Colors.white),
                    onPressed: () => _toggleAudio(context, true), // Mute Audio
                  ),
                  // Toggle Video Button
                  IconButton(
                    icon: const Icon(Icons.videocam, color: Colors.white),
                    onPressed: () => _toggleVideo(context, true), // Mute Video
                  ),
                  // Leave Meeting Button
                  IconButton(
                    icon: const Icon(Icons.call_end, color: Colors.red),
                    onPressed: () => _leaveMeeting(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-height': 819.0})
class JoinMeeting extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const JoinMeeting({super.key});

  @override
  State<JoinMeeting> createState() {
    return _JoinMeetingState();
  }
}

@NowaGenerated()
class _JoinMeetingState extends State<JoinMeeting> {
  TextEditingController meetingID = TextEditingController();

  TextEditingController nickname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 564.0,
              left: 30.5,
              width: 331.5,
              height: 244.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                  ),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.primary, width: 1.0),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.primary,
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
                ),
                child: Stack(
                  alignment: const Alignment(0.0, 0.0),
                  children: [
                    Positioned(
                      top: 0.0,
                      left: 93.75,
                      width: 144.0,
                      height: 31.0,
                      child: Text(
                        'Join a meeting',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Positioned(
                      top: 47.0,
                      left: 24.0,
                      width: 286.0,
                      height: 53.0,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.bodyMedium,
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: 'Meeting ID',
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                          fillColor: Theme.of(context).colorScheme.onSurface,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 2.0)),
                        ),
                        controller: meetingID,
                        validator: (value) {
                          if (value == null || value!.isEmpty) {
                            return 'Field is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    Positioned(
                      top: 115.0,
                      left: 22.75,
                      width: 286.0,
                      height: 53.0,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.bodyMedium,
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: 'Nickname',
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                          fillColor: Theme.of(context).colorScheme.onSurface,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 2.0)),
                        ),
                        controller: nickname,
                        validator: (value) {
                          if (value == null || value!.isEmpty) {
                            return 'Field is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    Positioned(
                      top: 186.0,
                      left: 128.75,
                      height: 40.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).colorScheme.primary,
                              spreadRadius: 2.0,
                              blurRadius: 5.0,
                              offset: const Offset(0.0, 0.0),
                            )
                          ],
                        ),
                        child: CustomButton(
                          onPressed: () {},
                          child: const Text(
                            'Join',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0x00ffffff),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:session_hive/join_meeting.dart';

@NowaGenerated()
class HostMeeting extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HostMeeting({super.key});

  @override
  State<HostMeeting> createState() {
    return _HostMeetingState();
  }
}

@NowaGenerated()
class _HostMeetingState extends State<HostMeeting> {
  TextEditingController meetingID = TextEditingController();

  TextEditingController meetingTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 408.0,
              left: 30.5,
              width: 331.5,
              height: 400.0,
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
                      left: 84.25,
                      width: 161.0,
                      height: 47.0,
                      child: Text(
                        'Host a meeting',
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
                        validator: (value) {
                          if (value == null || value!.isEmpty) {
                            return 'Field is required';
                          }
                          return null;
                        },
                        controller: meetingID,
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
                          labelText: 'Meeting Title (Optional)',
                          labelStyle: Theme.of(context).textTheme.bodyMedium,
                          fillColor: Theme.of(context).colorScheme.onSurface,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 2.0)),
                        ),
                        validator: (value) {
                          if (value == null || value!.isEmpty) {
                            return 'Field is required';
                          }
                          return null;
                        },
                        controller: meetingTitle,
                      ),
                    ),
                    Positioned(
                      top: 308.0,
                      left: 94.25,
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
                            'Create & Enter',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 230.0,
                      left: 94.25,
                      height: 40.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).colorScheme.onPrimary,
                              spreadRadius: 2.0,
                              blurRadius: 5.0,
                              offset: const Offset(0.0, 0.0),
                            )
                          ],
                        ),
                        child: CustomButton(
                          onPressed: () {},
                          color: Theme.of(context).colorScheme.onSecondary,
                          child: const Text(
                            'Upload Image',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 592.0,
              left: 56.0,
              child: Checkbox(
                value: false,
                onChanged: (value) {},
                checkColor: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            const Positioned(
              top: 595.0,
              left: 88.0,
              height: 26.0,
              child: Text(
                'Public Meeting',
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0x00ffffff),
    );
  }
}

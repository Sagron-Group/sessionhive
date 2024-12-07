import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:session_hive/join_meeting.dart';
import 'package:session_hive/host_meeting.dart';

@NowaGenerated()
class HomePage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

@NowaGenerated()
class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            const Positioned(
              top: -17.0,
              left: 39.5,
              width: 314.0,
              height: 298.0,
              child: Image(
                image: AssetImage('assets/SessionHive Logo-No Background.png'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 176.0,
              left: 39.5,
              height: 42.0,
              width: 142.5,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
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
                  onPressed: () {
                    showModalBottomSheet(
                      builder: (context) => const JoinMeeting(),
                      constraints: const BoxConstraints(minHeight: 400.0),
                      context: context,
                      anchorPoint: const Offset(0.0, 0.0),
                    );
                  },
                  color: Theme.of(context).colorScheme.onSecondary,
                  child: const Text(
                    'Join Meeting',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 176.0,
              left: 224.5,
              height: 40.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
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
                  onPressed: () {
                    showModalBottomSheet(
                      builder: (context) => const HostMeeting(),
                      constraints: const BoxConstraints(minHeight: 400.0),
                      context: context,
                      anchorPoint: const Offset(0.0, 0.0),
                    );
                  },
                  color: Theme.of(context).colorScheme.onSecondary,
                  child: const Text(
                    'Host Meeting',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: SizedBox(
          child: Text(
            'SessionHive',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              const IconData(58513, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            label: 'Profile',
            activeIcon: Icon(
              const IconData(60307, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).colorScheme.primary,
              size: 30.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              const IconData(60831, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            label: 'Meetings',
            activeIcon: Icon(
              const IconData(60831, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).colorScheme.primary,
              size: 30.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              const IconData(57408, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            label: 'Lounge',
            activeIcon: Icon(
              const IconData(57408, fontFamily: 'MaterialIcons'),
              color: Theme.of(context).colorScheme.primary,
              size: 30.0,
            ),
          )
        ],
        currentIndex: pageIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        showSelectedLabels: true,
        selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        unselectedItemColor: Theme.of(context).colorScheme.onError,
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        onTap: (value) {},
      ),
    );
  }
}

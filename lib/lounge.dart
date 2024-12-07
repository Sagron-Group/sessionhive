import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class Lounge extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Lounge({super.key});

  @override
  State<Lounge> createState() {
    return _LoungeState();
  }
}

@NowaGenerated()
class _LoungeState extends State<Lounge> {
  int pageIndex1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            const Positioned(
              top: 44.0,
              left: 39.5,
              width: 314.0,
              height: 298.0,
              child: Image(
                image: AssetImage('assets/SessionHive Logo-No Background.png'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 25.0,
              left: 29.0,
              width: 335.0,
              height: 537.0,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => SizedBox(
                  width: 100.0,
                  height: 232.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
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
                    ),
                  ),
                ),
                shrinkWrap: false,
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
              ),
            ),
            Positioned(
              top: 56.0,
              left: 57.0,
              width: 279.0,
              height: 126.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: const Image(
                  image: NetworkImage(
                      'https://canary.contestimg.wish.com/api/webimage/5ddccb3c9a6f6e1cf8d7dd65-large.jpg?cache_buster=114b2b0b5893a0e736412075646fa5da'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 202.0,
              left: 57.0,
              child: Text(
                'Session ID',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Positioned(
              top: 218.0,
              left: 57.0,
              child: Text(
                'Session Date',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Positioned(
              top: 202.0,
              left: 282.0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconData(60831, fontFamily: 'MaterialIcons'),
                  color: Color(0xff000000),
                ),
              ),
            ),
            Positioned(
              top: 183.0,
              left: 156.5,
              height: 20.0,
              child: Text(
                'Session Title',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
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
        selectedItemColor: Theme.of(context).colorScheme.primary,
        showSelectedLabels: true,
        selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        unselectedItemColor: Theme.of(context).colorScheme.onError,
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        currentIndex: pageIndex1,
        onTap: (value) {
          pageIndex1 = value;
          setState(() {});
        },
      ),
    );
  }
}

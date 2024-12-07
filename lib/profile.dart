import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:session_hive/firebase/firebase.dart';
import 'package:session_hive/google_sign_in.dart';

@NowaGenerated()
class Profile extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Profile({super.key});

  @override
  State<Profile> createState() {
    return _ProfileState();
  }
}

@NowaGenerated()
class _ProfileState extends State<Profile> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

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
              top: 40.0,
              left: 39.5,
              width: 314.0,
              height: 298.0,
              child: Image(
                image: AssetImage('assets/SessionHive Logo-No Background.png'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 377.5,
              left: 53.5,
              width: 286.0,
              height: 315.5,
              child: Stack(
                fit: StackFit.expand,
                alignment: const Alignment(0.0, 0.0),
                children: [
                  Positioned(
                    top: 0.0,
                    left: 0.0,
                    width: 286.0,
                    height: 53.0,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyMedium,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
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
                      controller: email,
                    ),
                  ),
                  Positioned(
                    top: 72.5,
                    left: 0.0,
                    width: 286.0,
                    height: 53.0,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyMedium,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Password',
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
                      obscureText: true,
                      controller: password,
                    ),
                  ),
                  Positioned(
                    top: 154.5,
                    left: 21.0,
                    height: 42.0,
                    width: 100.0,
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
                          FirebaseService().signInWithEmailAndPassword(
                              '${email}', '${password}');
                        },
                        color: Theme.of(context).colorScheme.onSecondary,
                        child: const Text(
                          'Sign In',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 154.5,
                    left: 163.0,
                    height: 42.0,
                    width: 102.0,
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
                          FirebaseService().signUpWithEmailAndPassword(
                              '${email}', '${password}');
                        },
                        color: Theme.of(context).colorScheme.onSecondary,
                        child: const Text(
                          'Sign Up',
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 222.5,
                    left: 135.0,
                    child: Text(
                      'Or',
                    ),
                  ),
                  const Positioned(
                    top: 271.5,
                    left: 21.0,
                    width: 244.0,
                    height: 44.0,
                    child: GoogleSignIn(),
                  )
                ],
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
        currentIndex: pageIndex,
        onTap: (value) {
          pageIndex = value;
          setState(() {});
        },
        selectedItemColor: Theme.of(context).colorScheme.primary,
        showSelectedLabels: true,
        selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        unselectedItemColor: Theme.of(context).colorScheme.onError,
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
      ),
    );
  }
}

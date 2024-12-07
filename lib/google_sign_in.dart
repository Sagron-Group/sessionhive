import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 244.0, 'auto-height': 44.0})
class GoogleSignIn extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const GoogleSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      color: const Color(0xffffffff),
      surfaceTintColor: const Color(0xffffdcdc),
      child: InkWell(
        borderRadius: BorderRadius.circular(14.0),
        onTap: () {},
        splashColor: const Color(0xffffeee7),
        hoverColor: const Color(0xfffff1f1),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            right: 30.0,
            top: 10.0,
            bottom: 10.0,
          ),
          child: NFlex(
            direction: Axis.horizontal,
            spacing: 10.0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FlexSizedBox(
                width: 20.0,
                height: 20.0,
                child: Image(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              FlexSizedBox(
                width: null,
                height: null,
                child: Text(
                  'Continue with Google',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

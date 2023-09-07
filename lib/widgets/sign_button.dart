import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/utils/pallete.dart';

class SigninButton extends StatelessWidget {
  final String assetPath;
  final String label;
  final double pad;
  const SigninButton(
      {super.key,
      required this.label,
      required this.assetPath,
      required this.pad});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            width: 2,
            color: Pallete.borderColor,
          ),
        ),
      ),
      icon: SvgPicture.asset(
        assetPath,
        width: 30,
        height: 30,
        // ignore: deprecated_member_use
        color: Pallete.whiteColor,
      ),
      label: Padding(
        padding: EdgeInsets.fromLTRB(pad, 20, pad, 20),
        child: Text(
          label,
          style: const TextStyle(color: Pallete.whiteColor),
        ),
      ),
      onPressed: () {},
    );
  }
}

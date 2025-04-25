import 'package:demoapp/src/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = GoogleFonts.inter(
      color: const Color.fromRGBO(65, 64, 66, 0.8),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          'assets/logo.svg',
          width: 104,
          height: 104,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        Text(
          context.l10n.risingWoman.toUpperCase(),
          style: GoogleFonts.rufina(
            color: const Color(0xFF0E121B),
            fontSize: 24,
            height: 1.5,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          context.l10n.embraceYourShadowsTitle.toUpperCase(),
          style: titleStyle,
        ),
        Text(
          context.l10n.embraceYourShadowsSubTitle.toUpperCase(),
          style: titleStyle,
        ),
      ],
    );
  }
}

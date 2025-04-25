import 'package:demoapp/src/l10n/l10n.dart';
import 'package:demoapp/src/welcome_screen/widgets/animated_dot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollableBox extends StatefulWidget {
  const ScrollableBox({super.key});

  @override
  State<ScrollableBox> createState() => _ScrollableBoxState();
}

class _ScrollableBoxState extends State<ScrollableBox>
    with SingleTickerProviderStateMixin {
  late final controller = TabController(
    vsync: this,
    length: 3,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListenableBuilder(
            listenable: controller,
            builder: (context, __) {
              return Row(
                spacing: 4,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedDot(isSelected: controller.index == 0),
                  AnimatedDot(isSelected: controller.index == 1),
                  AnimatedDot(isSelected: controller.index == 2),
                ],
              );
            },
          ),
          const SizedBox(height: 18),
          SizedBox(
            height: 120,
            child: TabBarView(
              controller: controller,
              children: [
                _TitleSubtitle(
                  title: context.l10n.scrollableBoxText1,
                  subTitle: context.l10n.scrollableBoxTextSubtitle1,
                ),
                _TitleSubtitle(
                  title: context.l10n.scrollableBoxText2,
                  subTitle: context.l10n.scrollableBoxTextSubtitle2,
                ),
                _TitleSubtitle(
                  title: context.l10n.scrollableBoxText3,
                  subTitle: context.l10n.scrollableBoxTextSubtitle3,
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: const Color.fromRGBO(63, 74, 94, 1),
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            child: Text(
              context.l10n.getStarted,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.l10n.alreadyHaveAnAccount,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromRGBO(82, 88, 102, 1),
                  ),
                ),
                Text(
                  context.l10n.signIn,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(117, 86, 61, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleSubtitle extends StatelessWidget {
  const _TitleSubtitle({
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'TiemposHeadline',
              fontWeight: FontWeight.w400,
              fontSize: 32,
              height: 1.01,
              color: Color.fromRGBO(24, 27, 37, 1),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          Text(
            subTitle,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: const Color.fromRGBO(113, 119, 132, 1),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}

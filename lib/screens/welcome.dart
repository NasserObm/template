import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    _controller.repeat(reverse: true);

    // Navigation automatique après 10 secondes
    Future.delayed(const Duration(seconds: 10), () {
      context.go('/home_page');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Welcome.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Scoreboard",
                  style: GoogleFonts.roboto(
                    color: const Color(0xff3B2794),
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(
                height: 10,
              ),
              LinearProgressIndicator(
                value: _controller.value,
                color: const Color(0xff3B2794),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

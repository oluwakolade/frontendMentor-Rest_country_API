import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header1 extends StatelessWidget {
  final String text;
  const Header1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.nunitoSans(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w800));
  }
}

class Header2 extends StatelessWidget {
  final String text;
  const Header2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.nunitoSans(
            color: Theme.of(context).primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w800));
  }
}

class Header3 extends StatelessWidget {
  final String text;
  const Header3({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.nunitoSans(
            color: Theme.of(context).primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600));
  }
}

class Header4 extends StatelessWidget {
  final String text;
  const Header4({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.nunitoSans(
            color: Theme.of(context).primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w300));
  }
}

class CardText extends StatelessWidget {
  final String text;
  final String label;
  const CardText({super.key, required this.label, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$label:',
          style: GoogleFonts.nunitoSans(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: GoogleFonts.nunitoSans(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}

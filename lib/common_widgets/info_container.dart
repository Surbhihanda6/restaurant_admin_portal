import 'package:flutter/material.dart';

class InfoContainer extends StatefulWidget {
  const InfoContainer({
    super.key,
    required this.ctitle,
    required this.cquantity,
    required this.cIcons,
    required this.cColor,
  });
  final String ctitle;
  final String cquantity;
  final IconData cIcons;
  final Color cColor;

  @override
  State<InfoContainer> createState() => _InfoContainerState();
}

class _InfoContainerState extends State<InfoContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 140,
        width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.cColor.withOpacity(0.5),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -5,
              left: -5,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 6,
                    style: BorderStyle.solid,
                    color: Colors.white,
                  ),
                  color: widget.cColor.withOpacity(0.5),
                ),
                child: Center(child: Icon(widget.cIcons)),
              ),
            ),
            Positioned(
              top: 20,
              right: 15,
              child: SizedBox(
                width: 140,
                child: Text(
                  widget.ctitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 25,
              top: 90,
              child: Text(
                widget.cquantity,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CopyrightTab extends StatelessWidget {
  const CopyrightTab({
    super.key,
    required this.mediawidth,
  });

  final double mediawidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.1.sh,
      //  width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
      //width: 0.8.sw,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(
          color: Colors.grey[200]!,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              '2018 - 2020',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              ' © APK Technosys',
              style: TextStyle(
                color: Color(0xff696eff),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

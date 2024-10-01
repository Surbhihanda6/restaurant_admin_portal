import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminInfoTab extends StatelessWidget {
  const AdminInfoTab({
    super.key,
    required this.mediawidth,
  });

  final double mediawidth;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 80),
      child: Container(
        height: 0.1.sh,
        //width: 0.8.sw,
        // width: mediawidth < 800 ? 1.sw - 50 : 1.sw - 240,
        //decoration: const BoxDecoration(color: Colors.green),
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 35),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
                    child: Text(
                      'Hello Admin',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 5.h, 0, 0),
                    child: const Text(
                      'Welcome back!',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff696eff),
                        Color(0xfff8acff),
                      ],
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(11.0),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
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

import 'package:flutter/material.dart';
import 'package:kompress/app/utils/theme.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [CustomTheme.gradientStart, CustomTheme.gradientEnd],
              ),
            ),
          ),
           Container(height:70 ,
           alignment: Alignment.center,
            child: const Text(
              'Notificações',
              style: TextStyle(color: Colors.white, 
              fontSize: 19),
            ),
          ),
          
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

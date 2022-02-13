import 'package:flutter/material.dart';
import 'package:kompress/app/components/notification_card.dart';
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
      body: SizedBox.expand(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [CustomTheme.gradientStart, CustomTheme.gradientEnd],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            children: const [
              Align(
                  alignment: Alignment.topCenter, child: Text("Notificações")),
              SizedBox(height: 20),
              NotificationCard(title: "Teste", notificationText: "teste"),
              NotificationCard(type: NotificationType.expired),
              NotificationCard(title: "Teste", notificationText: "teste"),
              NotificationCard(type: NotificationType.expired),
              NotificationCard(title: "Teste", notificationText: "teste"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

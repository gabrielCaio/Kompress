import 'package:flutter/material.dart';
import 'package:kompress/app/utils/theme.dart';

enum NotificationType { warning, expired }

class NotificationCard extends StatelessWidget {
  final String title;
  final String notificationText;
  final NotificationType type;
  // Please inform one notification type, if not informed the default is warn
  // NotificationType.warning, Notification.expired

  const NotificationCard({
    Key? key,
    this.title = "Notification",
    this.notificationText = "undefined",
    this.type = NotificationType.warning,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget getIcon() {
      switch (type) {
        case NotificationType.expired:
          return const Icon(Icons.error, color: CustomTheme.red, size: 30);
        default:
          return const Icon(Icons.warning, color: CustomTheme.yellow, size: 30);
      }
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: CustomTheme.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Expanded(
        child: Row(
          children: [
            getIcon(),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    notificationText,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

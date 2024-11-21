import 'package:intl/intl.dart';
extension DateTimeFormatting on DateTime {
  String formatDate() {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(this);
  }
}
import 'package:intl/intl.dart';

String dateFormat(DateTime? dateTime) {
  if (dateTime == null) {
    return '';
  } else {
    return DateFormat.yMMMd('en_US').add_Hm().format(dateTime);
  }
}

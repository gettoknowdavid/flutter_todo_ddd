import 'package:flutter_todo_ddd/common/widgets/app_dialogs.dart';
import 'package:open_mail_app/open_mail_app.dart';

class OpenMailAppFacade {
  Future<void> openMailApp() async {
    final result = await OpenMailApp.openMailApp();

    if (!result.didOpen && !result.canOpen) {
      AppDialogs.noMailAppDialog();
    } else if (!result.didOpen && result.canOpen) {
      AppDialogs.mailAppOptionsDialog(
        MailAppPickerDialog(mailApps: result.options),
      );
    }
  }
}


import 'package:sights/core/enums/message_type.dart';

abstract class BlocAction {}

class ShowLoader extends BlocAction {}

class HideLoader extends BlocAction {}

class ShowMessage extends BlocAction {
  ShowMessage({
    required this.messageType,
    this.title,
    this.message,
    this.dismissible = true,
  });

  MessageType messageType;
  String? title;
  String? message;
  bool dismissible;
}

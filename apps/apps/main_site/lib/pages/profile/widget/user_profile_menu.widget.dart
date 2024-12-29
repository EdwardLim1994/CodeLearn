import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class UserProfileMenuWidget extends StatefulWidget {
  const UserProfileMenuWidget({super.key});

  @override
  State<UserProfileMenuWidget> createState() => _UserProfileMenuWidgetState();
}

class _UserProfileMenuWidgetState extends State<UserProfileMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      child: Column(
        children: [
          Text("User Profile Menu"),
        ],
      ),
    );
  }
}

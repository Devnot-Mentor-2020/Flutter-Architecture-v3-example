import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'file:///C:/Users/Alperen/IdeaProjects/provider_arc/lib/ui/widgets/posts.dart';
import 'package:provider_arc/core/models/user.dart';
import 'package:provider_arc/ui/shared/app_colors.dart';
import 'package:provider_arc/ui/shared/text_styles.dart';
import 'package:provider_arc/ui/shared/ui_helpers.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UIHelper.verticalSpaceLarge,
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Welcome ${Provider.of<User>(context).name}",style: subHeaderStyle,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Here All Your Posts",style: subHeaderStyle,),
            ),
            UIHelper.verticalSpaceSmall,
            Expanded(child: Posts(),)
          ],
        ),
    );
  }
}

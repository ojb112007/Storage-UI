import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teamfolderapp/pages/team_folder.dart';

void main() {
  runApp(const CloudFileManageUI());
}

class CloudFileManageUI extends StatelessWidget {
  const CloudFileManageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cloudfiles",
      home: TeamFolderPage(),
    );
  }
}

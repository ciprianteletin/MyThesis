import 'package:flutter/material.dart';
import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/page/search/search_field.dart';
import 'package:my_thesis/page/widgets/thesis_tiles.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';
import '../size_config.dart';
import 'notification/widgets/header.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 242, 223),
        body: Container(
            padding: EdgeInsets.only(
                top: SizeConfig.topPadding + SizeConfig.topInsets + 10,
                right: 10,
                left: 10),
            child: SizedBox(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const SearchField('Thesis title...'),
                  Expanded(
                    child: ListView(
                      children: [
                        Header(),
                        const SizedBox(height: 30.0),
                        Container(
                          padding: const EdgeInsets.only(top: 35.0, left: 30),
                          decoration: BoxDecoration(
                            color: LightGreyColors.lightGrey5,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    authProvider.isStudent
                                        ? "Thesises"
                                        : "My subjects",
                                    style: TextStyle(
                                      color: DarkGreyColors.darkGrey5,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    icon: const Icon(Icons.settings,
                                        color: Colors.purple, size: 30),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                              const SizedBox(height: 30.0),
                              ThesisListTiles(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]))));
  }
}

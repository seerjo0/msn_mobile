import 'package:flutter/material.dart';
import 'package:msn_mobile/tabs/Calls.dart';
import 'package:msn_mobile/tabs/Chats.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Tab> appTabs = <Tab>[
    const Tab(text: 'Chats'),
    const Tab(text: 'Calls'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: appTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MSN Messenger'),
          bottom: TabBar(tabs: appTabs),
        ),
        body: const TabBarView(
          children: [
            Chats(),
            Calls(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/calls.dart';
import 'package:whatsapp_clone/views/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;
  @override
  void initState() {
    // initialize tab controller
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff128c7e),
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              Container(
                width: 30,
                alignment: Alignment.center,
                child: const Tab(child: Icon(Icons.camera_alt)),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 4.5) - 10,
                child: const Tab(
                  text: "CHATS",
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 4.5) - 10,
                child: const Tab(
                  text: "STATUS",
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 4.5) - 10,
                child: const Tab(
                  text: "CALLS",
                ),
              ),
            ],
          ),
          title: const Text('WhatsApp'),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            const Icon(Icons.ac_unit_outlined),
            ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                trailing: const Text("Yesterday"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://picsum.photos/200/300?random=$index"),
                ),
                title: const Text("Name"),
                subtitle: const Text("Last message"),
              );
            }),
            const Status(),
            const Calls(),
          ],
        ),
      ),
    );
  }
}

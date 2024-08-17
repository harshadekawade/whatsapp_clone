import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utility.dart';

void main() => const WhatsApp();

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: AppBar(
              backgroundColor: const Color(0xFF008069),
              foregroundColor: Colors.white,
              actions: const [
                Icon(Icons.search),
                Padding(padding: EdgeInsets.only(right: 15)),
                Icon(Icons.more_vert_outlined),
                Padding(padding: EdgeInsets.only(right: 15))
              ],
              elevation: 10,
              title: const Text('WhatsApp'),
              bottom: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: const Color(0xFFaed9d2),
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  tabs: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: const Text('CHAT'),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: const Text('STATUS'),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: const Text('CALLS'),
                    ),
                  ]),
            ),
          ),
        ),
        body: Stack(
          children: [
            TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: const [
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "01/01/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Prakash Sawant")),
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "02/01/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Omkar Parab")),
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "03/01/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Sanket Patil")),
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "04/02/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Mahesh Sawant")),
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "06/01/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Mandar Parab")),
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "15/01/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Rajesh Patel")),
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "10/02/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Ashirwad Parab")),
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "07/01/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Gitesh Patil")),
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "03/01/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Shubham Karekar")),
                    ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('assets/boy-avatar.png'),
                        ),
                        trailing: Text(
                          "03/01/2021",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        title: Text("Rajat Patil")),
                  ],
                ),
                const Center(
                  child: Text('Status'),
                ),
                const Center(
                  child: Text('Calls'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                child: Align(
                  alignment: FractionalOffset.bottomRight,
                  child: FloatingActionButton(
                      backgroundColor: lightGreen,
                      child: const Icon(Icons.message),
                      onPressed: () {
                        print('hello');
                      }),
                ),
              ),
            ),
          ],
        )

        // Auto Listing by index

        // ListView.builder(
        //     itemCount: 10,
        //     itemBuilder: (BuildContext context,int index){
        //       return ListTile(
        //         contentPadding: const EdgeInsets.all(10),
        //         leading: const CircleAvatar(
        //           backgroundColor: Colors.grey,
        //           backgroundImage: AssetImage('assets/boy-avatar.png'),
        //         ),
        //         trailing: const Text("1/1/2021",
        //           style: TextStyle(
        //               color: Colors.black54, fontSize: 15),),
        //         title:Text("User$index")
        //       );
        //     }
        // ),

        );
  }
}

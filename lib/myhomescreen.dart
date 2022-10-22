import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            centerTitle: false,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),

                Tab(
                  child: Text('Chats'),
                ),

                Tab(
                  child: Text('Status'),
                ),

                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions:  [
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                  PopupMenuItem(
                      value: '1',
                      child: Text('New Group'),
                  ),
                    PopupMenuItem(
                      value: '2',
                      child: Text('Settings'),
                    ),
                    PopupMenuItem(
                      value: '3',
                      child: Text('Logout'),
                    ),
              ]),
              
            ],
          ),
            body:  TabBarView(
              children: [
                const Text('Camera'),
                ListView.builder(
                  itemCount: 50,
                    itemBuilder: (context,index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg&_gl=1*m3qzab*_ga*MTY3OTQ2NzE5Mi4xNjY2MjQ0MjAz*_ga_8JE65Q40S6*MTY2NjM0ODQ3Ni42LjEuMTY2NjM0OTQ4Ny4wLjAuMA..'),
                        ),
                        title: Text('Carlo'),
                        subtitle: Text('Where Are You?'),
                        trailing: Text('12:32 PM'),
                      );
                    }
                ),

                ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context,index) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                           shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.cyan,
                              width: 3,

                            ),
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/735911/pexels-photo-735911.jpeg?cs=srgb&dl=pexels-soumil-kumar-735911.jpg&fm=jpg&_gl=1*162rjnx*_ga*MTY3OTQ2NzE5Mi4xNjY2MjQ0MjAz*_ga_8JE65Q40S6*MTY2NjM0ODQ3Ni42LjEuMTY2NjM0OTcwMi4wLjAuMA..'),
                          ),
                        ),
                        title: const Text('Andy'),
                        subtitle: const Text('35m ago'),

                      );
                    }
                ),


                ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context,index) {
                      return  ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?cs=srgb&dl=pexels-masha-raymers-2726111.jpg&fm=jpg&_gl=1*1rpug3r*_ga*MTY3OTQ2NzE5Mi4xNjY2MjQ0MjAz*_ga_8JE65Q40S6*MTY2NjMzMjg2My41LjEuMTY2NjMzMzEwMC4wLjAuMA..'),
                        ),
                        title: const Text('Daina'),
                        subtitle: Text(index/2 == 0 ? 'You Missed Call' : 'Call Times is 09:10 PM'),
                        trailing: Icon(index/2 == 0 ? Icons.phone : Icons.video_call),
                      );
                    }
                ),
              ],
            ),
        ),
    );
  }
}

import 'package:flutter/material.dart';

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

TextEditingController _searchController = new TextEditingController();

List storyList = [
    {
      "name": "Majdi",
      "imageUrl": "https://avatars.githubusercontent.com/u/60318289?v=4",
      "isOnline": true,
      "hasStory": false,
    },
    {
      "name": "Mohamed",
      "imageUrl": "https://scontent.fnbe1-2.fna.fbcdn.net/v/t1.6435-1/p320x320/80392624_2641015322650985_962981089951875072_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_ohc=A5C5V0UFhwUAX_hMUMe&tn=YJacikgOMnW4dTk_&_nc_ht=scontent.fnbe1-2.fna&oh=03842eacfe761aee16c35fd9f509cfea&oe=61C0E851",
      "isOnline": false,
      "hasStory": true,
    },
    {
      "name": "Rami",
      "imageUrl": "https://scontent.fnbe1-2.fna.fbcdn.net/v/t39.30808-6/244645230_4379110035515940_642427351699068685_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=vniZ-wyVhT8AX-hvvtw&_nc_ht=scontent.fnbe1-2.fna&oh=5f51392ca101f10210b0d434bef9a86e&oe=619E88C0",
      "isOnline": true,
      "hasStory": false,
    }
  ];

List conversationList = [
    {
      "name": "Majdi",
      "imageUrl": "https://avatars.githubusercontent.com/u/60318289?v=4",
      "isOnline": true,
      "hasStory": true,
      "message": "Ya weldi winek?",
      "time": "5:00 pm"
    },
    {
      "name": "Mohamed",
      "imageUrl": "https://scontent.fnbe1-2.fna.fbcdn.net/v/t1.6435-1/p320x320/80392624_2641015322650985_962981089951875072_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_ohc=A5C5V0UFhwUAX_hMUMe&tn=YJacikgOMnW4dTk_&_nc_ht=scontent.fnbe1-2.fna&oh=03842eacfe761aee16c35fd9f509cfea&oe=61C0E851",
      "isOnline": false,
      "hasStory": false,
      "message": "It's soooooo good!",
      "time": "7:23 pm"
    },
    {
      "name": "Abderrazak",
      "imageUrl": "https://scontent.fnbe1-2.fna.fbcdn.net/v/t31.18172-8/13502701_909299602514257_4626298798709559712_o.jpg?_nc_cat=111&ccb=1-5&_nc_sid=174925&_nc_ohc=hRaKAU12lmEAX8FtEVb&_nc_ht=scontent.fnbe1-2.fna&oh=aef2553138944f2a8f53a8c3035a392b&oe=61C1329D",
      "isOnline": true,
      "hasStory": false,
      "message": "hhhhhhhhh",
      "time": "10:50 pm"
    },
    {
      "name": "Wassef",
      "imageUrl": "https://avatars.githubusercontent.com/u/49594956?v=4",
      "isOnline": true,
      "hasStory": true,
      "message": "let's gooo !",
      "time": "yesterday"
    },
    {
      "name": "Roustem",
      "imageUrl": "https://scontent.fnbe1-2.fna.fbcdn.net/v/t1.6435-9/122947250_773033796594583_1324511997992682863_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=1xz3I97Uo6QAX9rYYpX&tn=YJacikgOMnW4dTk_&_nc_ht=scontent.fnbe1-2.fna&oh=58a39da15fca4ffec522eb4caf10d10e&oe=61C13A08",
      "isOnline": false,
      "hasStory": true,
      "message": "hhh JOJO refrence",
      "time": "2nd Nov"
    },
    {
      "name": "Idriss",
      "imageUrl": "https://scontent.fnbe1-2.fna.fbcdn.net/v/t1.18169-9/26169937_358148444658126_6184937625770319968_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=1lRArhK4VOUAX89KN2w&_nc_ht=scontent.fnbe1-2.fna&oh=b9ba68a3608ac3e1d99d8c85166399e4&oe=61BF35AA",
      "isOnline": false,
      "hasStory": false,
      "message": "Bahi",
      "time": "28th Jan"
    }
  ];

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://avatars.githubusercontent.com/u/68862589?v=4"),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "Chats",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.edit)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFe9eaec),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                cursorColor: Color(0xFF000000),
                controller: _searchController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF000000).withOpacity(0.5),
                    ),
                    hintText: "Search",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _stories(),
            SizedBox(
              height: 20,
            ),
            _conversations(context)
          ],
        ),
      )),
    );
  }
}

_stories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFe9eaec)),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 33,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 75,
                  child: Align(
                      child: Text(
                    'Your Story',
                    overflow: TextOverflow.ellipsis,
                  )),
                )
              ],
            ),
          ),
          Row(
              children: List.generate(storyList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: Stack(
                      children: <Widget>[
                        storyList[index]['hasStory']
                            ? Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.blueAccent, width: 3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                storyList[index]['imageUrl']),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              )
                            : Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            storyList[index]['imageUrl']),
                                        fit: BoxFit.cover)),
                              ),
                        storyList[index]['isOnline']
                            ? Positioned(
                                top: 38,
                                left: 42,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF66BB6A),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xFFFFFFFF), width: 3)),
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 75,
                    child: Align(
                        child: Text(
                      storyList[index]['name'],
                      overflow: TextOverflow.ellipsis,
                    )),
                  )
                ],
              ),
            );
          }))
        ],
      ),
    );
  }

_conversations(BuildContext context) {
    return Column(
      children: List.generate(conversationList.length, (index) {
        return InkWell(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: Stack(
                    children: <Widget>[
                      conversationList[index]['hasStory'] ? 
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.blueAccent, width: 3)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        conversationList[index]['imageUrl']),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )
                      : Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    conversationList[index]['imageUrl']),
                                fit: BoxFit.cover)),
                      ),
                      conversationList[index]['isOnline']
                          ? Positioned(
                              top: 38,
                              left: 42,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xFF66BB6A),
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Color(0xFFFFFFFF), width: 3)),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      conversationList[index]['name'],
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 135,
                      child: Text(
                        conversationList[index]['message'] +
                            " . " +
                            conversationList[index]['time'],
                        style: TextStyle(
                            fontSize: 15, color: Color(0xFF000000).withOpacity(0.7)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
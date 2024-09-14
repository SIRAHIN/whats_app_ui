import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final String name;
  final String image;

  MessageScreen({super.key, required this.name, required this.image});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  bool showSendButton = false;

  TextEditingController userText = TextEditingController();

  List<Map> botMessage = [
    {"message": "Hi!", "isME": true, "time": "10.00 am"},
    {"message": "Hello!", "isME": false, "time": "10.00 am"},
    {"message": "How are You ?", "isME": true, "time": "10.00 am"},
    {
      "message": "I'm fine, what's about you?",
      "isME": false,
      "time": "10.00 am"
    },
    {
      "message": "I'm fine too, what's your today plan?",
      "isME": true,
      "time": "10.00 am"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              return Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        backgroundColor: Color(0xff075e54),
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.image),
          ),
          title: Text(
            widget.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "last seen 4.00 pm",
            style: TextStyle(color: Colors.white.withOpacity(0.5)),
          ),
          trailing: const SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.video_call_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 15),
                Icon(Icons.call, color: Colors.white)
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://w0.peakpx.com/wallpaper/818/148/HD-wallpaper-whatsapp-background-cool-dark-green-new-theme-whatsapp.jpg"),
                fit: BoxFit.fitHeight,
                filterQuality: FilterQuality.high)),
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(14),
              itemCount: botMessage.length,
              itemBuilder: (context, index) {
                final message = botMessage[index]['message'];
                bool checkcondition = botMessage[index]['isME'];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: (checkcondition == false)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                      decoration: BoxDecoration(
                          borderRadius: (checkcondition = !checkcondition)
                              ? const BorderRadius.only(
                                  bottomRight: Radius.circular(14),
                                  topLeft: Radius.circular(14),
                                  topRight: Radius.circular(14))
                              : const BorderRadius.only(
                                  bottomLeft: Radius.circular(14),
                                  topLeft: Radius.circular(14),
                                  topRight: Radius.circular(14)),
                          color: Colors.green),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          message.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: userText,
                    onChanged: (value) {
                      if ((value.isNotEmpty)) {
                        setState(() {
                          showSendButton = true;
                        });
                      }
                      if ((value.isEmpty)) {
                        setState(() {
                          showSendButton = false;
                        });
                      }
                    },
                    textAlignVertical: TextAlignVertical.center,
                    cursorHeight: 25,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        filled: true,
                        fillColor: Colors.black.withOpacity(.5),
                        suffixIcon: Icon(
                          Icons.attach_file,
                          color: Colors.white,
                        )),
                  ),
                ),
                showSendButton == false
                    ? Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic_none_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    : Expanded(
                      child: CircleAvatar(
                          backgroundColor: Color(0xff075e54),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

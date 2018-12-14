import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )
    ],
  );
  final stories = Expanded(
      child: Padding(
    padding: const EdgeInsets.only(top: 8),
    child: new ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://scontent.fcai2-1.fna.fbcdn.net/v/t1.0-9/14440605_10210369636935062_7103491151498687093_n.jpg?_nc_cat=102&_nc_eui2=AeFmZLh0ajekCNSn-KuPlbeS_TP5Cz8Mq2nRLE79vV6NKJqOXXWMPVXu7ajZ63J-PLPp25aOvTar4jgmGLDlTQTkItCxqu-pf26KbPcfk-2p5w&_nc_ht=scontent.fcai2-1.fna&oh=d45f12cb08eba5ca045ec23a30b33ce5&oe=5CA367A9"))),
                margin: const EdgeInsets.symmetric(horizontal: 8),
              ),
              index == 0
                  ? Positioned(
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[topText, stories],
      ),
    );
  }
}

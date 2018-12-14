import 'package:flutter/material.dart';
import 'package:instgram/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: new InstaStories(),
              height: deviceSize.height * 0.18,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //1st Row
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://scontent.fcai2-1.fna.fbcdn.net/v/t1.0-9/14440605_10210369636935062_7103491151498687093_n.jpg?_nc_cat=102&_nc_eui2=AeFmZLh0ajekCNSn-KuPlbeS_TP5Cz8Mq2nRLE79vV6NKJqOXXWMPVXu7ajZ63J-PLPp25aOvTar4jgmGLDlTQTkItCxqu-pf26KbPcfk-2p5w&_nc_ht=scontent.fcai2-1.fna&oh=d45f12cb08eba5ca045ec23a30b33ce5&oe=5CA367A9"))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Mahmoud Kandeel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                //2nd Row
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                      "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                ),
                //3rd Row
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.heart),
                                SizedBox(width: 16),
                                Icon(FontAwesomeIcons.comment),
                                SizedBox(width: 16),
                                Icon(FontAwesomeIcons.paperPlane),
                                SizedBox(width: 16)
                              ]),
                          Icon(FontAwesomeIcons.bookmark)
                        ])),
                //4th Row
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "Liked by MKandee, kumad and 213 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                //5th Row
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://scontent.fcai2-1.fna.fbcdn.net/v/t1.0-9/14440605_10210369636935062_7103491151498687093_n.jpg?_nc_cat=102&_nc_eui2=AeFmZLh0ajekCNSn-KuPlbeS_TP5Cz8Mq2nRLE79vV6NKJqOXXWMPVXu7ajZ63J-PLPp25aOvTar4jgmGLDlTQTkItCxqu-pf26KbPcfk-2p5w&_nc_ht=scontent.fcai2-1.fna&oh=d45f12cb08eba5ca045ec23a30b33ce5&oe=5CA367A9"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment ..."),
                        ),
                      )
                    ],
                  ),
                ),
                //6th Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "1 day ago",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
    );
  }
}

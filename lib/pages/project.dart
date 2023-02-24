import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProjectPage extends StatefulWidget {
  final String folderName;
  const ProjectPage({super.key, required this.folderName});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(children: [
        Container(
          height: 200,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey.shade200),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Chatbox',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Project",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.05)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.05)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.share,
                      size: 28,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ]),
        ),
        Container(
          padding: EdgeInsets.only(left: 25, top: 25),
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildAvatar('Mia', 'mia'),
              buildAvatar('Adam', 'adam'),
              buildAvatar('Jess', 'jess'),
              buildAvatar('Mike', 'mike'),
              buildAvatar('Brandon', 'brandon'),
              buildAvatar('Alie', 'alie'),
            ],
          ),
        ),
        const Divider(),
        Expanded(
            child: ListView(
          padding: const EdgeInsets.all(25),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Files",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Create new',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            buildRowCard("Assets",true),
            buildRowCard("Brandbook",false),
            buildRowCard("Design",false),
            buildRowCard("Assets",false),
            buildRowCard("Moodboards",false),
            buildRowCard("Wirefremes",false),
            buildRowCard("Other",false),
          ],
        ))
      ]),
    );
  }

  Container buildRowCard(String folderName,bool showAlert) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(children: [
                Icon(
                  Icons.folder,
                  color: Colors.blue[200],
                ),
                if(showAlert)
                Positioned(
                  right: 0,
                  top: 2,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: CircleAvatar(
                      radius: 3.5,
                      backgroundColor: Colors.red,
                    ),
                  ),
                )
              ]),
              const SizedBox(
                width: 12,
              ),
              Text(
                folderName,
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }

  Widget buildAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: Image.asset('assets/images/$filename.jpeg').image,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/anu1.jpg',
                ),
                radius: 30.0,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            const Text(
              "Anusha Acharya",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              children: [
                Text(
                  "acharyaanusha7@gmail.com",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 30.0,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
              ],
            ),
            Row(
              children: [
                Icon(Icons.folder),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "My Files",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.people),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Share with me",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.star),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Starred",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.access_time),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Recent",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.download_done_rounded),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Offline",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.upload),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Uploads",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.backup_rounded),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Backup",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.delete),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Trash",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Setting & account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("Review it"),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star_half)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            )
          ],
        ),
      ),
    );
  }
}

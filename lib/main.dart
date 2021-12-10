import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myContacts = listOfContacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/car.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: myContacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  myContact: myContacts[index],
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myContacts[index]["image"]),
                    ),
                    title: Text(
                      myContacts[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(myContacts[index]["phone"]),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listOfContacts = [
  {
    "name": "Awudu Barikisu",
    "location": "Wa Ghana",
    "email": "barikisuawudu11@gmail.com",
    "phone": "+233 247803773",
    "Group": "national mobile app development",
    "image": "https://picsum.photos/200/300?random=101"
  },
  {
    "name": "Ahmed",
    "location": "Wa Ghana",
    "email": "ahmed@gmail.com",
    "phone": "+233 247803483",
    "Group": "national mobile app development",
    "image": "https://picsum.photos/200/300?random=201"
  },
  {
    "name": "Awudu Rashida",
    "location": "Wa Ghana",
    "email": "rashid05@gmail.com",
    "phone": "+233 547803730",
    "Group": "national mobile app development",
    "image": "https://picsum.photos/200/300?random=209"
  },
  {
    "name": "sylvester",
    "location": "Wa Ghana",
    "email": "syl50@gmail.com",
    "phone": "+233 241716360",
    "Group": "national mobile app development",
    "image": "https://picsum.photos/200/300?random=403"
  },
  {
    "name": "Musah Moro",
    "location": "Wa Ghana",
    "email": "musahmoro11@gmail.com",
    "phone": "+233 203186101",
    "Group": "national mobile app development",
    "image": "https://picsum.photos/200/300?random=322"
  },
  {
    "name": "Durowaa Selina",
    "location": "Wa Ghana",
    "email": "durowaaselina@gmail.com",
    "phone": "+233 2462264855",
    "Group": "national mobile app development",
    "image": "https://picsum.photos/200/300?random=505"
  },
  {
    "name": "Tewia Augustine",
    "location": "Wa Ghana",
    "email": "nanaty552@gmail.com",
    "phone": "+233 547909221",
    "Group": "national mobile app development",
    "image": "https://picsum.photos/200/300?random=401"
  },
];

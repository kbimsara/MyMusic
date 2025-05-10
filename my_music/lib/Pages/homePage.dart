import 'package:flutter/material.dart';
import 'package:my_music/Components/musicNameCard.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Music',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF222831)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('My Music', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    padding: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      image: const DecorationImage(
                        image: AssetImage('assets/images/images1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Playlists',
                      style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    padding: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      image: const DecorationImage(
                        image: AssetImage('assets/images/images2.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    padding: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      image: const DecorationImage(
                        image: AssetImage('assets/images/images3.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: 10,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text(
            //           'Song Title $index',
            //           style: const TextStyle(color: Colors.white),
            //         ),
            //         subtitle: const Text(
            //           'Artist Name',
            //           style: TextStyle(color: Colors.grey),
            //         ),
            //         leading: const Icon(Icons.music_note, color: Colors.white),
            //         onTap: () {
            //           // Handle song tap
            //         },
            //       );
            //     },
            //   ),
            // ),
            Expanded(
              child: ListView(
                children: [
                  MusicNameCard(
                    title: 'Song Title 1',
                    imagePath: 'assets/images/images1.jpg',
                    artist: 'Artist 1',
                  ),
                  MusicNameCard(
                    title: 'Song Title 2',
                    imagePath: 'assets/images/images2.png',
                    artist: 'Artist 2',
                  ),
                  MusicNameCard(
                    title: 'Song Title 3',
                    imagePath: 'assets/images/images3.jpg',
                    artist: 'Artist 3',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

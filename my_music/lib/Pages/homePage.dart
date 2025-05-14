import 'package:flutter/material.dart';
import 'package:my_music/Pages/folderPage.dart';
import 'package:my_music/Pages/playerPage.dart';
import 'package:my_music/Pages/youtubePage.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // 1. Define your data
  final List<Map<String, String>> songs = const [
    {
      'title': 'Song Title 1',
      'artist': 'Artist 1',
      'image': 'assets/images/images1.jpg',
    },
    {
      'title': 'Song Title 2',
      'artist': 'Artist 2',
      'image': 'assets/images/images2.png',
    },
    {
      'title': 'Song Title 3',
      'artist': 'Artist 3',
      'image': 'assets/images/images3.jpg',
    },
    {
      'title': 'Song Title 4',
      'artist': 'Artist 4',
      'image': 'assets/images/images1.jpg',
    },
    {
      'title': 'Song Title 5',
      'artist': 'Artist 5',
      'image': 'assets/images/images2.png',
    },
    {
      'title': 'Song Title 6',
      'artist': 'Artist 6',
      'image': 'assets/images/images3.jpg',
    },
    {
      'title': 'Song Title 4',
      'artist': 'Artist 4',
      'image': 'assets/images/images1.jpg',
    },
    {
      'title': 'Song Title 5',
      'artist': 'Artist 5',
      'image': 'assets/images/images2.png',
    },
    {
      'title': 'Song Title 6',
      'artist': 'Artist 6',
      'image': 'assets/images/images3.jpg',
    },
    {
      'title': 'Song Title 4',
      'artist': 'Artist 4',
      'image': 'assets/images/images1.jpg',
    },
    {
      'title': 'Song Title 5',
      'artist': 'Artist 5',
      'image': 'assets/images/images2.png',
    },
    {
      'title': 'Song Title 6',
      'artist': 'Artist 6',
      'image': 'assets/images/images3.jpg',
    },
    {
      'title': 'Song Title 4',
      'artist': 'Artist 4',
      'image': 'assets/images/images1.jpg',
    },
    {
      'title': 'Song Title 5',
      'artist': 'Artist 5',
      'image': 'assets/images/images2.png',
    },
    {
      'title': 'Song Title 6',
      'artist': 'Artist 6',
      'image': 'assets/images/images3.jpg',
    },
    {
      'title': 'Song Title 4',
      'artist': 'Artist 4',
      'image': 'assets/images/images1.jpg',
    },
    {
      'title': 'Song Title 5',
      'artist': 'Artist 5',
      'image': 'assets/images/images2.png',
    },
    {
      'title': 'Song Title 6',
      'artist': 'Artist 6',
      'image': 'assets/images/images3.jpg',
    },
    {
      'title': 'Song Title 4',
      'artist': 'Artist 4',
      'image': 'assets/images/images1.jpg',
    },
    {
      'title': 'Song Title 5',
      'artist': 'Artist 5',
      'image': 'assets/images/images2.png',
    },
    {
      'title': 'Song Title 6',
      'artist': 'Artist 6',
      'image': 'assets/images/images3.jpg',
    },
    {
      'title': 'Song Title 4',
      'artist': 'Artist 4',
      'image': 'assets/images/images1.jpg',
    },
    {
      'title': 'Song Title 5',
      'artist': 'Artist 5',
      'image': 'assets/images/images2.png',
    },
    {
      'title': 'Song Title 6',
      'artist': 'Artist 6',
      'image': 'assets/images/images3.jpg',
    },
    // Add more as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF191A19)),
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FolderPage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      height: 70,
                      width: 122.94,
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/images2.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const YoutubePage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 40),
                      height: 70,
                      width: 122.94,
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/images3.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.77,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF272727),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(23.0),
                  topRight: Radius.circular(23.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Library',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                            childAspectRatio: 0.8,
                          ),
                      itemCount: songs.length,
                      itemBuilder: (context, index) {
                        final song = songs[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlayerPage(song: song),
                              ),
                            );
                          },
                          child: Container(
                            // margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xFF3A3A3A),
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(song['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        213,
                                        0,
                                        0,
                                        0,
                                      ).withOpacity(0.7),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 6,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          song['title']!,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          song['artist']!,
                                          style: const TextStyle(
                                            color: Colors.white70,
                                            fontSize: 14,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        //Navigation bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF191A19),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (index) {
            // Handle navigation
            List<Widget> pages = [const HomePage(), const FolderPage()];
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pages[index]),
            );
          },
        ),
      ),
    );
  }
}

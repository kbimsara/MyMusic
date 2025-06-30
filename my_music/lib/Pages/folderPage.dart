import 'package:flutter/material.dart';
import 'package:my_music/Pages/homePage.dart';

void main() {
  runApp(const FolderPage());
}

class FolderPage extends StatelessWidget {
  const FolderPage({super.key});

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
    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top text
            Container(
              margin: const EdgeInsets.only(
                top: 40,
                left: 10,
              ), // Optional: add left margin
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns the text to the left
                children: [
                  const Text(
                    'Favourite',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'sing along and even dance to it whenever it comes on',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            // Music Structure
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.76,
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
                        return Container(
                          margin: const EdgeInsets.only(top: 10),
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
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        floatingActionButton: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
                spreadRadius: 4,
                blurRadius: 10,
              ),
            ],
          ),
          child: FloatingActionButton(
            onPressed: () {
              // Handle add module action
            },
            backgroundColor: const Color.fromARGB(192, 61, 61, 61),
            child: const Icon(Icons.shuffle, color: Colors.white),
          ),
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
          currentIndex: 1,
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
    );
  }
}

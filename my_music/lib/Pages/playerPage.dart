import 'package:flutter/material.dart';
import 'package:my_music/Pages/folderPage.dart';
import 'package:my_music/Pages/homePage.dart';

class PlayerPage extends StatelessWidget {
  final Map<String, String> song;

  const PlayerPage({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191A19),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Carousel or Album Art
          Container(
            height: MediaQuery.of(context).size.height*0.40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF3A3A3A),
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(song['image']!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Song Title and Artist
          Text(
            song['title'] ?? "Title",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            song['artist'] ?? "Artist",
            style: const TextStyle(color: Colors.white70, fontSize: 16),
          ),

          const SizedBox(height: 40),

          // Player Controls
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF3A3A3A),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                // Slider
                Slider(
                  value: 0.7,
                  onChanged: (value) {},
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                ),
                const SizedBox(height: 10),

                // Music Controls
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.skip_previous),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.play_circle_fill),
                      color: Colors.white,
                      iconSize: 50,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.skip_next),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Shuffle and Playlist icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.shuffle),
                color: Colors.white70,
                iconSize: 30,
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.playlist_play),
                color: Colors.white70,
                iconSize: 30,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),

      //Navigation bar
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: const Color(0xFF191A19),
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: 'Favourite',
      //     ),
      //   ],
      //   currentIndex: 0,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      //   showUnselectedLabels: true,
      //   onTap: (index) {
      //     // Handle navigation
      //     List<Widget> pages = [const HomePage(), const FolderPage()];
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => pages[index]),
      //     );
      //   },
      // ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List<Map<String, String>> songs = [
    {
      "artist": "Tulus",
      "title": "Hati-Hati di Jalan",
      "image": "assets/tulus.png"
    },
    {"artist": "Afgan", "title": "Sadis", "image": "assets/afgan.png"},
    {"artist": "Raisa", "title": "Kali Kedua", "image": "assets/raisa.png"},
    {
      "artist": "Glenn Fredly",
      "title": "Kasih Putih",
      "image": "assets/glen.png"
    },
    {"artist": "Yura Yunita", "title": "Intuisi", "image": "assets/yura.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F8),
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'PostNoBillsColomboExtraBold'),
        ),
        backgroundColor: Color(0xFFF3F3F8), 
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/gambar_pofil.jpg'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'David Bagus Junanda',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Welcome to 042',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            Container(
              height: 150,
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                children: List.generate(songs.length, (index) {
                  return Card(
                    color: Colors.white, 
                    elevation: 0, 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(songs[index]['image']!),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          songs[index]['artist']!,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          songs[index]['title']!,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    color: Colors.white, 
                    elevation: 0, 
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(songs[index]['image']!),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  songs[index]['artist']!,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  songs[index]['title']!,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                      },
                                    ),
                                    const Text(
                                      "Tambahkan",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(width: 10),
                                    IconButton(
                                      icon: Icon(Icons.play_arrow),
                                      onPressed: () {
                                      },
                                    ),
                                  ],
                                ),
                              ],
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
    );
  }
}

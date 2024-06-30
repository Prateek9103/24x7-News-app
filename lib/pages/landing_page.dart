import 'package:flutter/material.dart';
import 'package:news_app/pages/home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: [
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "images/building.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "News from around the world\n            at your fingertip",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Real-Time news",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 40.0),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Material(
                borderRadius: BorderRadius.circular(30),
                elevation: 5.0,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        "Explore",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


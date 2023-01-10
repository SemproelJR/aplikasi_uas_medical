import 'package:aplikasi_uas_medical/widgets/specialist_item.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_uas_medical/widgets/doctor_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const color2 = Color.fromARGB(55, 10, 125, 0);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Selamat Datang",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("assets/pm.png"),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/DUTABANGSA.png",
                    width: 92,
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "apa yang anda rasakan?",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const SizedBox(
                        width: 120,
                        child: Text(
                          "Isi medis Anda sekarang",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 150,
                        height: 35,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: const Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 64,
              decoration: BoxDecoration(
                color: const Color.fromARGB(95, 179, 173, 173),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    size: 32,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "How can we  help you?",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SpecialistItem(
                    imagePath: 'assets/clean.png',
                    imageName: 'Dentist',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SpecialistItem(
                    imagePath: 'assets/knife.png',
                    imageName: 'Surgeon',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SpecialistItem(
                    imagePath: 'assets/lungs.png',
                    imageName: 'Therapy',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SpecialistItem(
                    imagePath: 'assets/hormones.png',
                    imageName: 'Physiologist',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Doctor List',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoctorItem(
                    image: 'assets/A.png',
                    name: 'Sendang Ary W',
                    specialist: "Pediatrician",
                  ),
                  DoctorItem(
                    image: 'assets/B.png',
                    name: 'Tomy Irawan',
                    specialist: "Odontologist",
                  ),
                  DoctorItem(
                    image: 'assets/C.png',
                    name: 'Garry Christian',
                    specialist: "Surgeon",
                  ),
                  DoctorItem(
                    image: 'assets/E.png',
                    name: 'Andre Adi S',
                    specialist: "Ophtamologist",
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

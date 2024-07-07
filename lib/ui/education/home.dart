import 'package:app/ui/education/post_add.dart';
import 'package:flutter/material.dart';

class EducationHome extends StatefulWidget {
  const EducationHome({super.key});

  @override
  State<EducationHome> createState() => _EducationHomeState();
}

class _EducationHomeState extends State<EducationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Education",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 12.0,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width - 16,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width - 14,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/post_ad_bg.jpeg"),
                          ),
                          color: const Color.fromARGB(255, 138, 206, 238),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        alignment: Alignment.center,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              color: Colors.black.withOpacity(0.4),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Avertise \n your school!".toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                MaterialButton(
                                  height: 40,
                                  onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const PostNewAdd(),
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Theme.of(context).primaryColor,
                                  minWidth: 100,
                                  child: const Text(
                                    "Post Ad",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Text(
                    "Popular Examinations",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ...List.generate(
                4,
                (index) => const ExaminationTile(),
              ),
              const Row(
                children: [
                  Text(
                    "Other Examinations",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 360,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  children: List.generate(
                    4,
                    (index) => const ExaminationGridCard(),
                  ),
                ),
              ),
              const Row(
                children: [
                  Text(
                    "Resources",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ...List.generate(
                4,
                (index) => ResourceTile(),
              ),
              const Row(
                children: [
                  Text(
                    "Latest News",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ...List.generate(
                4,
                (index) => const ResourceTile(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResourceTile extends StatelessWidget {
  const ResourceTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        width: double.maxFinite,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 70,
                width: 70,
                color: Colors.blue,
              ),
            ),
            const Flexible(
              child: Text(
                "Joint Admission and Matriculations Board",
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExaminationGridCard extends StatelessWidget {
  const ExaminationGridCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Placeholder(),
            ),
          ),
          Text(
            "NDA",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            "National Defence Academy",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ExaminationTile extends StatelessWidget {
  const ExaminationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        width: double.maxFinite,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(12),
                height: 70,
                width: 70,
                color: Colors.blue,
              ),
            ),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "JAMB",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Joint Admission and Matriculations Board",
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

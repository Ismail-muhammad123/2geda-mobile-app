import 'package:app/ui/education/cost_preview.dart';
import 'package:flutter/material.dart';

class PostNewAdd extends StatefulWidget {
  const PostNewAdd({super.key});

  @override
  State<PostNewAdd> createState() => _PostNewAddState();
}

class _PostNewAddState extends State<PostNewAdd> {
  List<Map<String, dynamic>> durations = [
    {
      "id": 1,
      "name": "1 week",
    },
    {
      "id": 2,
      "name": "2 week",
    },
    {
      "id": 3,
      "name": "3 week",
    },
    {
      "id": 4,
      "name": "1 month",
    },
    {
      "id": 5,
      "name": "2 month",
    },
    {
      "id": 6,
      "name": "3 months",
    },
  ];
  int? selectedDuration;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post an ad"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12.0),
                height: 70,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: Theme.of(context).primaryColor),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        "assets/images/Verified.png",
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const Flexible(
                      child: Text(
                        "Reach out to world audiance in large numbers while you pay less",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Row(
                children: [
                  const Text(
                    "Advert Information",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: const Text("School Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const Row(
                children: [
                  Text(
                    "* This will be visible to others",
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: const Text("Aditional Information"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Row(
                children: [
                  Text(
                    "Duration",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Wrap(
                children: durations
                    .map(
                      (duration) => GestureDetector(
                        onTap: () => setState(() {
                          selectedDuration = duration['id'];
                        }),
                        child: Container(
                          width: 80,
                          height: 30,
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: duration['id'] == selectedDuration
                                ? Theme.of(context).primaryColor
                                : null,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            duration['name'],
                            style: TextStyle(
                              color: duration['id'] == selectedDuration
                                  ? Colors.white
                                  : Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 14,
              ),
              const Row(
                children: [
                  Text(
                    "Upload Advert image",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Select File",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "filename.png",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              TextField(
                minLines: 3,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: "Add a note (optional)",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              MaterialButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CostPreview(),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Theme.of(context).primaryColor,
                minWidth: double.maxFinite,
                child: const Text(
                  "Preview cost",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

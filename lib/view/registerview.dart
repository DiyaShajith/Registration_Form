import 'package:flutter/material.dart';

class Registerview extends StatefulWidget {
  const Registerview({super.key});

  @override
  State<Registerview> createState() => _RegisterviewState();
}

class _RegisterviewState extends State<Registerview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.person,
            size: 32,
          )
        ],
        title: const Text(
          "Registration Form",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "First Name",
                        labelStyle: TextStyle(fontWeight: FontWeight.w400),
                        border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Last Name", border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Email",
              style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "email", border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}

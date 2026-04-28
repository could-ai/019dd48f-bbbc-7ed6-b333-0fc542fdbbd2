import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  final List<Student> _students = [
    Student(id: '1', name: 'Alice Johnson', email: 'alice@example.com'),
    Student(id: '2', name: 'Bob Smith', email: 'bob@example.com'),
    Student(id: '3', name: 'Charlie Davis', email: 'charlie@example.com'),
    Student(id: '4', name: 'Diana Prince', email: 'diana@example.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_add),
            onPressed: () {
              // TODO: Invite student
            },
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: _students.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final student = _students[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              child: Text(
                student.name.substring(0, 1).toUpperCase(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ),
            title: Text(student.name),
            subtitle: Text(student.email),
            trailing: PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'view',
                  child: Text('View Progress'),
                ),
                const PopupMenuItem(
                  value: 'message',
                  child: Text('Send Message'),
                ),
                const PopupMenuItem(
                  value: 'remove',
                  child: Text('Remove Student'),
                ),
              ],
              onSelected: (value) {
                // TODO: Handle action
              },
            ),
          );
        },
      ),
    );
  }
}

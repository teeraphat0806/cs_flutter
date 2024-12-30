import 'package:flutter/material.dart';
import '../../data/profile_repository.dart';

class ProfileListView extends StatelessWidget {
  final ProfileRepository user = ProfileRepository.mock();

  @override
  Widget build(BuildContext context) {
    // Fetch user data
    final userData = user.get_mockdata() as Map<String, dynamic>;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Table(
        columnWidths: const {
          0: IntrinsicColumnWidth(), // Adjust key column to fit content
          1: FlexColumnWidth(), // Let the data column expand flexibly
        },
        children: userData.entries.map((entry) {
          return TableRow(
            children: [
              // Key (Label)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  '${entry.key} ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    
                  ),
                ),
              ),
              // Value (Data)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  entry.value.toString(),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple, // Data in purple color
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

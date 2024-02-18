import 'package:flutter/material.dart';

class LocationHistoryChip extends StatelessWidget {
  final List<String> locationHistory;
  final Function(String) onChipSelected;
  final Color? textColor;
  final Color? chipColor;
  final Color? chipBorderColor;

  LocationHistoryChip({super.key,
    required this.locationHistory,
    required this.onChipSelected,
    this.textColor,
    this.chipColor,
    this.chipBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 4.0, // Adjust spacing as needed
          children: locationHistory.map((history) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: ChoiceChip(
                label: Text(
                  history,
                  style: TextStyle(color: textColor),
                ),
                selected: false,
                backgroundColor: chipColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: chipBorderColor ?? Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                onSelected: (selected) {
                  onChipSelected(history);
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';

class SearchHistoryChip extends StatelessWidget {
  final List<String> searchHistory;
  final Function(String) onChipSelected;
  final Color? textColor;
  final Color? chipColor;
  final Color? chipBorderColor;

  SearchHistoryChip({
    required this.searchHistory,
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
        const CustomText(text: 'জনপ্রিয় সার্চ', maxLines: 1),
        const SizedBox(height: 8),
        Wrap(
          spacing: 4.0, // Adjust spacing as needed
          children: searchHistory.map((history) {
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

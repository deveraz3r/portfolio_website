import '/utils/app_urls.dart';

class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterButton({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReusableElevatedButton(
      buttonName: label,
      onPressed: onTap,
      color: isSelected ? Colors.purple : Colors.grey.shade700, // Dynamic color based on selection
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Customize padding for FilterButton
      textColor: Colors.white, // Ensure the text is always visible
      margin: const EdgeInsets.symmetric(horizontal: 8), // Customize margin similar to the original FilterButton
    );
  }
}

import './../../utils/app_urls.dart';

class ReusableElevatedButton extends StatelessWidget {
  const ReusableElevatedButton({
    super.key,
    required this.buttonName,
    this.onPressed,
    this.width,
    this.color = AppColors.primaryColor,
    this.margin,
    this.textColor = Colors.white,
    this.padding = const EdgeInsets.all(8)
  });

  final String buttonName;
  final VoidCallback? onPressed;
  final double? width;
  final Color color;
  final EdgeInsets? margin;
  final Color textColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 35,
      padding: padding,
      margin: margin ?? const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: InkWell(
        onTap: onPressed ?? () {},
        child: Center(child: Text(buttonName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),))
      ),
    );
  }
}


part of 'widgets.dart';

class SelectableBoxWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final bool isEnabled;
  final double width;
  final double height;
  final Function onTap;
  final TextStyle textStyle;

  SelectableBoxWidget(this.text,
      {this.textStyle,
      this.onTap,
      this.height = 60,
      this.isEnabled = true,
      this.isSelected = false,
      this.width = 144});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: (!isEnabled)
                ? buttonBackgroundGray
                : isSelected
                    ? accentColor2
                    : Colors.transparent,
            border: Border.all(
                color: (!isEnabled)
                    ? buttonBackgroundGray
                    : isSelected
                        ? Colors.transparent
                        : buttonBackgroundGray)),
        child: Center(
          child: Text(
            text ?? "None",
            style: (textStyle ?? blackTextFont)
                .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}

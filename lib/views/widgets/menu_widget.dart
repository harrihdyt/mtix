part of 'widgets.dart';

class MenuWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Function() onPressed;

  MenuWidget(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          left: 12,
          right: 12,
          top: 20,
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 2,
                      color: greyColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

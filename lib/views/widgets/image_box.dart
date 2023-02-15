part of 'widgets.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      padding: EdgeInsets.all(5),
      width: 180,
      height: 300,
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: greyColor,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5,
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/poster.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'ONE PIECE RED',
            style: blackTextStyle.copyWith(
              fontWeight: semoBold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '2D',
                  style: greenTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                Text(
                  'SU',
                  style: greenTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

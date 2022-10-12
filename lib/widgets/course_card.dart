import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.searchenginejournal.com/wp-content/uploads/2022/06/image-search-1600-x-840-px-62c6dc4ff1eee-sej-1280x720.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'C++: Begining to Advance',
                  style: text.bodyMedium!.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                Text(
                  'Lorelai Victoria Gilmore is a fictional character in The WB dramedy television series Gilmore Girls.',
                  style: text.bodySmall,
                ),
                const Divider(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CardInfoWidget(
                      iconData: Icons.star,
                      val: '4.5',
                    ),
                    CardInfoWidget(
                      iconData: Icons.timer,
                      val: '45m 29s',
                    ),
                    CardInfoWidget(
                      iconData: Icons.person,
                      val: '45 enrolled',
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardInfoWidget extends StatelessWidget {
  final IconData iconData;
  final String val;
  const CardInfoWidget({
    super.key,
    required this.iconData,
    required this.val,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 15),
        const SizedBox(width: 2),
        Text(
          val,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

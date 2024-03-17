import 'package:assignment/core/app_colors.dart';
import 'package:assignment/screens/item_details_screen.dart';
import 'package:assignment/widgets/glass_morphed_container.dart';
import 'package:assignment/widgets/header_container.dart';
import 'package:assignment/widgets/instant_item.dart';
import 'package:assignment/widgets/popular_beverages_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const List<String> images = [
    'assets/images/cup.png',
    'assets/images/coffee2.png',
    'assets/images/black_coffee.png',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/swift_cafe.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.1,
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/image.png',
              ),
            ),
          ),
          child: SizedBox(
            height: double.infinity,
            child: Column(
              children: [
                const HeaderContainer(),
                Container(
                  color: const Color.fromRGBO(49, 49, 49, 0.45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.0164,
                            bottom: height * 0.0164,
                            left: 18),
                        child: const Text(
                          'Most Popular Beverages',
                          style: TextStyle(
                            color: AppColors.textColor1,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.2431,
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 15);
                          },
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ItemDetailsScreen(
                                      imageString: images[index],
                                    ),
                                  ),
                                );
                              },
                              child: PopularBeveragesItem(
                                imageString: images[index],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.0283,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GlassMorphedContainer(
                    blurValue: 15,
                    backgroundColor: Colors.white.withAlpha(25),
                    horizontalPadding: 20,
                    verticalPadding: 27,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Get it instantly',
                          style: TextStyle(
                            color: AppColors.textColor1,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: 0.2,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.separated(
                            scrollDirection:
                                width > 500 ? Axis.horizontal : Axis.vertical,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ItemDetailsScreen(
                                        imageString: images[index],
                                      ),
                                    ),
                                  );
                                },
                                child: InstantItem(
                                  title: 'Lattè',
                                  imageString: images[index],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return width > 500
                                  ? const SizedBox(
                                      width: 14,
                                    )
                                  : const SizedBox(
                                      height: 14,
                                    );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

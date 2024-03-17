import 'package:assignment/core/app_colors.dart';
import 'package:assignment/core/constants.dart';
import 'package:assignment/widgets/glass_morphed_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GlassMorphedContainer(
      blurValue: 15,
      backgroundColor: Colors.white.withAlpha(25),
      horizontalPadding: 20,
      verticalPadding: width > 1100 ? 10 : 27,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://s3-alpha-sig.figma.com/img/7a6f/42e1/4f1f6295c9216a95b2b012478cf647e1?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PmB0GJqhbKXKf88IeWgJnh81BuLQr8U48416ndBTHlHIJM0RruROXMNzgFHkq0-ak9TJ3MwCOkBII3Ik3LNF4~028pgQfR1MRnvPqsu2X~ti55O0p0dXuqbyNDRe6Jb7YkdLwKanZoENxOg~z4LMRsBqzgbIQszdTPE0xP5g2N-LMjcsZ3rN-Pfl8Dsqo-85m12mdRispVA3GKpPbPdVg1Y-t0R8fN5A9rr3pokz66aFYzr~rcQLUq69wnfsefFMX1W9LlwGjE0eth7RENV5jezlwSrgMghOEVjEJVcRxUuYmc-FdqCcNfN32gFPqhJITNn5VFIN~8oZOkahTo6JuA__',
                width: 27,
                height: 27,
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '20/12/2022',
                    style: TextStyle(
                        color: AppColors.textColor1,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                        letterSpacing: 0.2),
                  ),
                  Text(
                    'Joshua Scanlan',
                    style: TextStyle(
                        color: AppColors.textColor1,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        letterSpacing: 0.2),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(249, 249, 249, 0.79),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(
                  AppString.BAG_ICON,
                  width: 18,
                  height: 16,
                  fit: BoxFit.scaleDown,
                  color: AppColors.iconColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 39,
                width: 39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19.5),
                  border: Border.all(
                    color: const Color.fromRGBO(113, 171, 122, 1),
                  ),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/85f3/c034/ed6b413f8dbbe5e812b7c3a081e43366?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lQPclgxwDA-6pk5qHTkhGlX7IrUY3sDGb3PV1gXD2NjyVWtpQjPcqeIZ-CPrJI4W-HdgPLQhcisFhxyWbdUtuQU~rF51SzqaBnZnNpsrhXgVqrHt-lSqhtlP9GzAMbRhOJwszn3DWzgJYTJh6Euh4RUnkUo9CwLiEf0sD1lxWtc08ImMUewB9yOX1CdQTLE7Mi1HQ8jPNczkDyYU~lVTtW1IiEGfiDbO7b9dErta1x043YuZq7aivsbW2JkOk8yaKO7N15herKdh3OSSsflvBmP5ZHHDsoTZTLynQfKvu4mlxy2POs-qxQWdUf0ot4eOGIIGe0YE9x7Q02S2J4vZxg__'),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.0319,
          ),
          SizedBox(
            height: 55,
            width: double.infinity,
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.searchBarBackgroundColor,
                prefixIcon: SvgPicture.asset(
                  AppString.SEARCH_ICON,
                  height: 18,
                  width: 18,
                  fit: BoxFit.scaleDown,
                  color: AppColors.searchBarIconColor,
                ),
                suffixIcon: SvgPicture.asset(
                  AppString.FILTER_ICON,
                  height: 18,
                  width: 22,
                  fit: BoxFit.scaleDown,
                  color: AppColors.searchBarIconColor,
                ),
                hintText: 'Search favourite Beverages',
                hintStyle: const TextStyle(
                    color: AppColors.searchBarIconColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    letterSpacing: 0.18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                      const BorderSide(color: AppColors.searchBarBorderColor),
                ),
                contentPadding: const EdgeInsets.all(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

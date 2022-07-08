import 'package:flutter/material.dart';
import 'package:src_surf_diary/common/constants/global_const.dart';
import 'package:src_surf_diary/common/size_config.dart';

class SpotCard extends StatelessWidget {
  final bool isFullCard;
  const SpotCard({this.isFullCard = true, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: getProportionateScreenWidth(isFullCard ? 158 : 137),
        child: Column(children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/img/backgrounds/van.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
              width: getProportionateScreenWidth(isFullCard ? 158 : 137),
              padding: EdgeInsets.all(
                getProportionateScreenWidth(kDefaultPadding),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kDefualtShadow],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'El palmar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: isFullCard ? 17 : 12,
                    ),
                  ),
                  //  if (isFullCard)
                  //   Text(
                  //     travelSport.date.day.toString(),
                  //     style: Theme.of(context)
                  //         .textTheme
                  //         .headline4
                  //         .copyWith(fontWeight: FontWeight.bold),
                  //   ),
                  // if (isFullCard)
                  //   Text(
                  //     DateFormat.MMMM().format(travelSport.date) +
                  //         " " +
                  //         travelSport.date.year.toString(),
                  //   ),
                  // VerticalSpacing(of: 10),
                  // Travelers(
                  //   users: travelSport.users,
                  // ),
                ],
              ))
        ]));
  }
}

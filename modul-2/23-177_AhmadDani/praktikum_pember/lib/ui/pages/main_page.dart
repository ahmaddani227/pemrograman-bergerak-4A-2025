import 'package:flutter/material.dart';
import 'package:praktikum_pember/data/places.dart';
import 'package:praktikum_pember/ui/widgets/custom_card_place.dart';
import "../../shared/theme.dart";

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final hotPlaces = places.where((place) => place.isHotPlace).toList();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot Places",
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: greyTextStyle.copyWith(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                SizedBox(
                  height: 130,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: defaultMargin),
                      scrollDirection: Axis.horizontal,
                      itemCount: hotPlaces.length,
                      itemBuilder: (context, index) {
                        final place = hotPlaces[index];
                        return Cardplace(
                          place: place,
                          isHorizontal: true,
                          displayType: CardDisplayType.hotPlace,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Hotel",
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: greyTextStyle.copyWith(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    final place = places[index];
                    return Cardplace(
                      place: place,
                      displayType:
                          CardDisplayType
                              .bestHotel, // Set displayType untuk Best Hotel
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/add-place");
        },
        backgroundColor: kPrimaryColor,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:praktikum_pember/shared/theme.dart';
import 'package:praktikum_pember/data/places.dart';

class DetailPlacePage extends StatelessWidget {
  const DetailPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    final placeId = ModalRoute.of(context)?.settings.arguments as int?;
    Place? selectedPlace;

    if (placeId != null) {
      selectedPlace = places.firstWhere((place) => place.id == placeId);
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child:
              selectedPlace != null
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                          Expanded(
                            child: Text(
                              selectedPlace.title,
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 48),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          selectedPlace.image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.landscape, color: kBlackColor),
                                  SizedBox(height: 8),
                                  Text(
                                    "Wisata Alam",
                                    style: blackTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(Icons.location_on, color: kBlackColor),
                                  SizedBox(height: 8),
                                  Text(
                                    selectedPlace.location,
                                    style: blackTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.confirmation_number,
                                color: kBlackColor,
                                size: 25,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "30.000.00",
                                style: blackTextStyle.copyWith(
                                  fontSize: 25,
                                  fontWeight: extraBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        selectedPlace.description,
                        style: blackTextStyle.copyWith(
                          fontSize: 13,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  )
                  : Center(
                    child: Text(
                      'Data tempat tidak ditemukan.',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
        ),
      ),
    );
  }
}

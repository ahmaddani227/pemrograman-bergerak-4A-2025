import 'package:flutter/material.dart';
import 'package:praktikum_pember/shared/theme.dart';
import 'package:praktikum_pember/data/places.dart';

enum CardDisplayType { hotPlace, bestHotel }

class Cardplace extends StatelessWidget {
  final Place place;
  final bool isHorizontal;
  final CardDisplayType displayType;

  const Cardplace({
    super.key,
    required this.place,
    this.isHorizontal = false,
    this.displayType = CardDisplayType.hotPlace,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail-place", arguments: place.id);
      },
      child: Container(
        padding: EdgeInsets.all(defaultMargin),
        width: isHorizontal ? 290 : double.infinity,
        margin: EdgeInsets.only(
          bottom: isHorizontal ? 0 : 16,
          right: isHorizontal ? 16 : 0,
          top: 8,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultMargin),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 12,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(defaultMargin),
              child: Image.asset(
                place.image,
                width: isHorizontal ? 80 : 100,
                height: isHorizontal ? 80 : 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: defaultMargin),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    isHorizontal
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                children: [
                  Text(
                    place.title,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  // Kondisi untuk menampilkan lokasi atau deskripsi
                  if (displayType == CardDisplayType.hotPlace)
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 14, color: kBlackColor),
                        SizedBox(width: 4),
                        Text(
                          place.location ?? '',
                          style: greyTextStyle.copyWith(fontSize: 14),
                          maxLines: isHorizontal ? 1 : 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    )
                  else if (displayType == CardDisplayType.bestHotel)
                    Text(
                      place.description,
                      style: greyTextStyle.copyWith(fontSize: 14),
                      maxLines: isHorizontal ? 1 : 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

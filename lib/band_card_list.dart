import 'package:flutter/material.dart';
import 'images_urls.dart';
import 'band_card.dart';

class BandCardList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BandCard(
            image: ImagesUrls.queenImage,
            bandName: 'Queen',
            bandYears: '1970-'
        ),
        BandCard(
            image: ImagesUrls.pinkFImage,
            bandName: 'Pink Floyd',
            bandYears: '1965-1995 ',
            favorite: false
        ),
        BandCard(
            image: ImagesUrls.gunsImage,
            bandName: 'Guns N Roses',
            bandYears: '1985-'
        ),
        BandCard(
            image: ImagesUrls.aerosmithFImage,
            bandName: 'Aerosmith',
            bandYears: '1970-'
        ),
        BandCard(
            image: ImagesUrls.ledZImage,
            bandName: 'Led Zepellin',
            bandYears: '1968-1980'),
        BandCard(
            image: ImagesUrls.smithsImage,
            bandName: 'The Smiths',
            bandYears: '1982-1987'
        ),
        BandCard(
            image: ImagesUrls.rolStonesImage,
            bandName: 'The Rolling Stones',
            bandYears: '1962-'),
        BandCard(
            image: ImagesUrls.beatlesImage,
            bandName: 'The Beatles',
            bandYears: '1957-1970'),
        BandCard(
            image: ImagesUrls.blackSabImage,
            bandName: 'Black Sabbath',
            bandYears: '1968-2017'),
        BandCard(
            image: ImagesUrls.acdcImage,
            bandName: 'AC/DC',
            bandYears: '1973-'),
        Container(
          height: 40.0,
        )
      ],
    );
  }
}
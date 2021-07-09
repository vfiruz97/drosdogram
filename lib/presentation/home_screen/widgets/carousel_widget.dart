import 'package:carousel_slider/carousel_slider.dart';
import 'package:drosdogram/presentation/home_screen/widgets/first_type_carousel_item_widget.dart';
import 'package:flutter/material.dart';

final List<List<String>> imgList = [
  [
    'В Сочи новый ЖК',
    'На севере города к 2022 году планируется старт строительства нового премиального жилого комплекса',
    'https://cdn.mskguru.ru/uploads/flats/3836/kvartry-v-zhk-dom-u-reki-1446624276,4152.jpg'
  ],
  [
    'Мы поработим мир',
    'На севере города к 2022 году планируется старт строительства нового премиального жилого комплекса',
    'https://cdn.mskguru.ru/uploads/flats/3836/kvartry-v-zhk-dom-u-reki-1446624276,4152.jpg'
  ],
];

final List<Widget> imageSliders =
    imgList.map((item) => FirstTypeCarouselItemWidget(item: item)).toList();

class CarouselWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                height: 350,
                autoPlayInterval: const Duration(seconds: 5),
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == entry.key
                            ? const Color.fromRGBO(255, 213, 0, 1)
                            : Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

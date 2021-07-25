import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:drosdogram/aplication/objects/slider/slider_bloc.dart';
import 'package:drosdogram/presentation/home_screen/widgets/first_type_carousel_item_widget.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderBloc, SliderState>(
      builder: (context, state) {
        final _sliders = state.sliders;
        final _sliderWidgets = _sliders
            .map((s) => FirstTypeCarouselItemWidget(slider: s))
            .toList();
        return SliderWidget(sliders: _sliderWidgets);
      },
    );
  }
}

class SliderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CarouselWithIndicatorState();
  final List<Widget> sliders;
  const SliderWidget({
    Key? key,
    required this.sliders,
  }) : super(key: key);
}

class _CarouselWithIndicatorState extends State<SliderWidget> {
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
            items: widget.sliders,
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
              children: widget.sliders.asMap().entries.map((entry) {
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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class CarrouselSlider extends StatefulWidget {
  final List imgList;
  const CarrouselSlider({Key? key,required this.imgList}) : super(key: key);

  @override
  State<CarrouselSlider> createState() => _CarrouselSliderState();
}

class _CarrouselSliderState extends State<CarrouselSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  late List imgList;
  @override
  void initState() {
    imgList = widget.imgList;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double wd = MediaQuery.of(context).size.width;
    final double hg = MediaQuery.of(context).size.height;
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      margin: EdgeInsets.all(15.0),
      child: Image.asset(item, fit: BoxFit.fitWidth, width: 1000.0),
    ))
        .toList();

    return Stack(
      children: [
        Container(
          height: hg * 0.45,
          child: Stack(
              children: [
            CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: false,
                  height: hg * 0.45,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: wd * .89,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: widget.imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }


}





import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/color.dart';

class StatikaPage extends StatelessWidget {
  const StatikaPage({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Жарыш',
          style: TextStyle(color: Appcolors.grey),
        ),
        leading: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/gift.svg'),
            iconSize: 45,
          ),
        ],
        elevation: 1.7,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 28, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Appcolors.yellow,
                  child: IconButton(
                    icon: SvgPicture.asset('assets/icons/calendar.svg',
                        height: 90, width: 90),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 45,
                ),
                CircleAvatar(
                    radius: 50,
                    backgroundColor: Appcolors.white,
                    child: SvgPicture.asset(
                      'assets/icons/profile.svg',
                      width: 120,
                      height: 120,
                    )),
                const SizedBox(
                  width: 45,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Appcolors.yellow,
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/vector.svg',
                      height: 90,
                      width: 90,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const Text('User',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 220,
                height: 120,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Appcolors.zrcard,
                  child: Column(
                    children: const [
                      Text(
                        '2-лига',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text('1-лигага өтүү үчүн \n1234 зикир калды'),
                      Text(
                        'Апталык',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '3-кун',
                        style: TextStyle(color: Appcolors.yellow),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 150,
                height: 120,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Appcolors.zrcard,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '1234',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: const [
                Text(
                  'Алдыңкылар',
                  style: TextStyle(
                      fontSize: 21,
                      color: Appcolors.green,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          CardRating(),
        ],
      ),
    );
  }
}

class CardRating extends StatelessWidget {
  const CardRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 380,
          height: 100,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Appcolors.zrcard,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Аты жөнү',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '123456',
                      style: TextStyle(
                          color: Appcolors.zknumberCr,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 35,
                      width: 100,
                      child: Card(
                        semanticContainer: true,
                        color: Appcolors.yellow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            '1-орун',
                            style:
                                TextStyle(color: Appcolors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Appcolors.green,
                ),
                const SizedBox(width: 161),
                Image.asset(
                  'assets/png/user.png',
                  height: 90,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

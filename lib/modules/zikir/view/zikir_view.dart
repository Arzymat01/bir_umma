import 'package:bir_umma/modules/zikir/view/statika_page.dart';
import 'package:flutter/material.dart';



class ZikirView extends StatelessWidget {
 ZikirView({Key? key}) : super(key: key);
 final PageController controller = PageController(initialPage: 0,keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          StatikaPage(onPressed: ()=>controller.jumpToPage(1)),

        ],
      ),
      
    
    );
  }
}

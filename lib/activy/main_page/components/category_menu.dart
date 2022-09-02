import 'package:flutter/material.dart';
import 'package:mobile_j_world/activy/main_page/style.dart';

import '../../../fake_bd/fake_bd.dart';

class CategoryMenu extends StatefulWidget {
  const CategoryMenu({Key? key}) : super(key: key);


  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  Map<int,bool> isSelect = {-1:true};
  FakeBd bd = FakeBd();
  @override
  void initState() {
      for(int i = 0; i != bd.category.length + 1;i++){
        isSelect.addAll({i:false});
      }
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ScrollController scroll = ScrollController();
    double wd = MediaQuery.of(context).size.width;


    return Center(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          controller: scroll,
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 28,
                  left: 5,
                ),
                child: GestureDetector(
                  onTap: (){switchSelection(-1);},
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: 80,
                    height: 70,
                    decoration: isSelect[-1]! ? MainAppStyle.menuCategorySelect : MainAppStyle.menuCategory,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                            child: Icon(Icons.home, color: Colors.white)
                        ),
                        Expanded(
                            child: Text("Destaques",
                              style: MainAppStyle.textMenuCategory,)
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 80,
                  child: ListView.builder(
                      itemCount: bd.category.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      controller: scroll,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: 28,
                            left: 5,
                          ),
                          child: GestureDetector(
                            onTap: (){switchSelection(index);},
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              width: 80,
                              decoration: isSelect[index]! ? MainAppStyle.menuCategorySelect : MainAppStyle.menuCategory,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Icon(
                                      bd.category[index].icon,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    bd.category[index].name,
                                    style: MainAppStyle.textMenuCategory,
                                  )),
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
  void switchSelection(index){
    isSelect.updateAll((key, value) => value = false);
    isSelect.update(index, (value) => value = true);
    setState(() {});
  }
}

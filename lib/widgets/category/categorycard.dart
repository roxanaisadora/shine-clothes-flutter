import 'package:flutter/material.dart';

class CategoryWidge extends StatelessWidget {
  final String? title;
  final String? image1;
  final String? image2;
  final Function? onTap;

  const CategoryWidge({super.key, this.title, this.image1, this.image2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ()=> onTap!(),
        child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/fondocategory.jpg'),
                        fit: BoxFit.cover
                        )
                      ),
                        child: Row(
                          children: [
                            Expanded(child: SizedBox( height: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(child: Text(title!, style: const TextStyle(color: Colors.white, fontSize: 18),)),
                            ),
                            )),
                            Expanded(child: Container( height: 100,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.network(
                                    image1!,
                                    height: 100,
                                    fit:BoxFit.fill  
                                  ),
                                ),
                                Expanded(
                                  child: Image.network(
                                    image2!,
                                    height: 100,
                                    fit:BoxFit.fill  
                                  ),
                                ),
                              ],
                            ),
                            ))
                          ],
                        )
                    ),
            ),
      );
  }
}
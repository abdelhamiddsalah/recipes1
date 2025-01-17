import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes/core/constants/colors.dart';

class itemSaved extends StatelessWidget {
  const itemSaved({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 12,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .19,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: mainColor),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                child: Image.asset(
                  'assets/images/img.png',
                  width: MediaQuery.of(context).size.width * .3,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
             const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Apple Frangipan Tart',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  
                  Text('Dessert',style: TextStyle(color: greyColor, fontSize: 18)),
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.delete_solid,color: Colors.white,))
      
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

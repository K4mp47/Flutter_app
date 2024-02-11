import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0
                )
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                hintText: 'Search Pancakes',
                hintStyle: TextStyle( 
                  fontSize: 14,
                ),
                prefixIcon: Padding( 
                  padding: const EdgeInsets.all(15),  
                  child: SvgPicture.asset('assets/icons/Search.svg', height: 20, width: 20),
                ),
                suffixIcon: Container(
                  width: 100,
                  child: IntrinsicHeight( 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalDivider(
                          color: Color(0xffDDDADA),
                          indent: 10,
                          endIndent: 10,
                          thickness: 0.1,
                        ),
                        Padding ( 
                          padding: const EdgeInsets.all(15), 
                          child: SvgPicture.asset('assets/icons/Filter.svg'), 
                        ),
                      ],
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
          title: const Text(
            'Breakfast For Me',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 0.0,
          centerTitle: true,
          leading: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/icons/menu1.svg', height: 20, width: 20,), 
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ), 
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 37,
              decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset('assets/icons/dots.svg', height: 5, width: 5,),  
            ) 
          ],
    );
  }
}

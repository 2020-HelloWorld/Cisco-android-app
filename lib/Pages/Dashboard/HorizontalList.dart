import 'package:firstpg/Pages/Dashboard/BrandDashboardImgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalList extends StatelessWidget {
  String choice;
  HorizontalList({Key? key, required this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**  Color mainColor = choice == 'Trending'
        ? Colors.black.withOpacity(0.55)
        : choice == "Trending Brands"
            ? Colors.black.withOpacity(0.55)
            : (choice == "Top Performing")
                ? Colors.black.withOpacity(0.55)
                : Color(0xffffcc33).withOpacity(0.95);
    Color mainColor2 = choice == 'Trending'
        ? Colors.white.withOpacity(0.4)
        : choice == "Trending Brands"
            ? Colors.white.withOpacity(0.4)
            : (choice == "Top Performing")
                ? Colors.white.withOpacity(0.4)
                : Color(0xff1E90FF).withOpacity(0.8);
    Color mainColor3 = choice == 'Trending'
        ? Colors.white.withOpacity(0.4)
        : choice == "Trending Brands"
            ? Colors.white.withOpacity(0.4)
            : (choice == "Top Performing")
                ? Colors.white.withOpacity(0.4)
                : Colors.green.withOpacity(0.65);*/

    return Container(
      padding: EdgeInsets.only(left: 15),
      height: 175.h,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          // shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(children: [
              Card(
                elevation: 12.h,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  // margin: EdgeInsets.only(left: 30),
                  width: 125.w,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: FittedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: (choice == "Trending"
                          ? Image.asset(infT[index]["icon"])
                          : (choice == "Trending Brands")
                              ? Image.asset(infBrand[index]["icon"])
                              : (choice == "Top Performing")
                                  ? Image.asset(infT[index]["icon"])
                                  : Image.asset(soci[index]["icon"])),
                      // child: Image.network(
                      //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwMTRVUGAGKSV-zYdlhlGBx3pUsnWZhcyQBA&usqp=CAU"),
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.60, top: 4.2),
                child: Container(
                  height: 35.w,
                  width: 45.h,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          (choice == "Trending"
                              ? infT[index]["Stars"]
                              : (choice == "Trending Brands")
                                  ? infBrand[index]["Stars"]
                                  : infTop[index]["Stars"]),
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.55)),
                        ),
                      ),
                      Container(
                          child: Icon(
                        Icons.star_sharp,
                        color: Color(0xffffcc33).withOpacity(0.95),
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 123.90, left: 5),
                child: Container(
                  height: 35.h,
                  width: 125.w,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Icon(Icons.airplay_outlined,
                            color: Colors.black.withOpacity(0.55)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          (choice == "Trending"
                              ? infT[index]["followers"]
                              : (choice == "Trending Brands")
                                  ? infBrand[index]["followers"]
                                  : infTop[index]["followers"]),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.55)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]);
          }),
    );
  }
}

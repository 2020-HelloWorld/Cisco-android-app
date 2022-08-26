import 'package:firstpg/Pages/Dashboard/BrandDetailsContainer.dart';
import 'package:firstpg/Pages/Dashboard/BrandDetailsImgs.dart';
import 'package:firstpg/Pages/Dashboard/DashboardHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandDetails extends StatefulWidget {
  const BrandDetails({super.key});

  @override
  State<BrandDetails> createState() => _BrandDetailsState();
}

class _BrandDetailsState extends State<BrandDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 115),
                      Image.network(
                          'https://s3-alpha-sig.figma.com/img/adbc/73d2/a83a90a76086b19a9b93e8b994b69e84?Expires=1662336000&Signature=VfCR6sq5GO8vgEVtCP94C-os3tbfThE7RdqKLO-Equ7CYOjzqWj5-0ixBF-qroamrLWFpDAECYEVeAoYU27ja3mfMyyce8JtYy7BdJqk5i~G58-T5J6QLZY9YAsXnlvmA-vCiP4wAlBCnA45IfbqqJh~DA7ZoJTSmO1FqXCrDQWgdNbaaIxalJwTe7XCKiLBbnk3ZWl0~LNGm2Jblgj647UJS0MCHHsm17wFRBGSg8Z9lmDP3u8KZ2xK2uIeZHtmg1RsDvEpYXZMUEmzhOeP-j6jtfDy2FkNUb5lnpDDPcvaqwiJ1pZXnuiRkPudor0LTnj7RSrpyXrHti7ZqYQhjg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                          width: 145,
                          height: 43),
                      //try providing asset img.
                      SizedBox(width: 66.52),
                      Icon(
                        Icons.notifications,
                        color: Color(0xff354044),
                        size: 28,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 480,
                  child: ListTile(
                    leading: Icon(Icons.search),
                    title: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                    trailing: Icon(Icons.filter_alt_rounded),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade300, Colors.white10],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),
                SizedBox(height: 31),
                Container(
                  height: 900,
                  child: Column(
                    children: List.generate(infl.length, (index) {
                      return BrandDetailsCont(
                        index: index,
                      );
                    }),
                  ),
                  // child: ListView.builder(
                  //   itemCount: 10,
                  //   scrollDirection: Axis.vertical,
                  //   itemBuilder: (context, index) {
                  //     return BrandDetailsCont();
                  //   },
                  // ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

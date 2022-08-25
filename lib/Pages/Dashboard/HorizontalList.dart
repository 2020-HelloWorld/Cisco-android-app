import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 175,
        child:
        ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)
            {
              return Stack(
                children:[
                Container(
                  margin: EdgeInsets.only(left: 30),
                  width: 125,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: FittedBox(
                    child: ClipRRect(
                      borderRadius:BorderRadius.circular(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwMTRVUGAGKSV-zYdlhlGBx3pUsnWZhcyQBA&usqp=CAU"),
                    ),
                    fit: BoxFit.fill,
                  ),

                ),
                  Padding(
                    padding: const EdgeInsets.only(left:30.0),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:4.0),
                            child: Text(
                              "9",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.55)
                              ),
                            ),
                          ),
                          Icon(Icons.star,color: Colors.black.withOpacity(0.55))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:140.0,left:30),
                    child: Container(
                      height: 35,
                      width: 125,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: Icon(Icons.airplay_outlined,color: Colors.black.withOpacity(0.55)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              "110K",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.55)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ]
              );
            }
        )
    );
  }
}


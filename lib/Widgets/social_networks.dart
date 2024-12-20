import 'package:flutter/material.dart';

class SocialNetworks extends StatelessWidget {

  const SocialNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Enter social networks",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){},
                  child: Card(

                    clipBehavior:Clip.antiAlias,
                    elevation: 10,
                    semanticContainer: false,
                    color: Colors.indigo,
                    child: Image.network("https://f.top4top.io/p_3271twnf81.png"),

                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: InkWell(
                  onTap: (){},
                  child: Card(
                    clipBehavior:Clip.antiAlias,
                    elevation: 10,
                    semanticContainer: false,
                    color: Colors.white,
                    child: Image.network("https://k.top4top.io/p_327186cbh1.png"),
                  ),
                ),
              )

            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

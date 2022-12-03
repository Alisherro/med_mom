import 'package:flutter/material.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Container(
              width: size.size.width,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://zarplata.kz/uploads/logo/1639113710.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('Садыхан» – группа компаний, начавшая свою работу в 1996 году.', style: TextStyle(fontSize: 18),),
            Container(
              width: size.size.width,
              height: size.size.height,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                'assets/images/1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'aaaaa',
                                maxLines: 1,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                'aaaaaaaa',
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}

//class PharmacyScreen extends StatelessWidget {
//   const PharmacyScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         width: size.width,
//         child: ListView(
//             children: [
//               Container(
//                 width: size.width,
//                 height: 250,
//                 decoration: BoxDecoration(
//                     color: Colors.orange,
//                     borderRadius: BorderRadius.circular(16),
//                     image: DecorationImage(
//                       image: NetworkImage(
//                           "https://zarplata.kz/uploads/logo/1639113710.jpg"),
//                       fit: BoxFit.cover,
//                     )),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Text(
//                   '«Садыхан» – группа компаний, начавшая свою работу в 1996 году.'),
//               SizedBox(height: 20),
//             ],
//           ),
//       ),
//     );
//   }
// }

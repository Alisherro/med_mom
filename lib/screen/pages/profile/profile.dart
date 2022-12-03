import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Как себя чувствуете?', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400), ),
                      Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.blue[300]),
                          child: const Icon(Icons.person, color: Colors.white))
                    ],
                  ),
                ),
          Container(
            child: Column(
              children: [
               
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage('assets/images/psyc.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "Психолог",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  "Пройдите консультацию у нас в приложении с психологом.",
                                  textAlign: TextAlign.right,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[700],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: const Center(
                                      child: Text("Консультация",
                                          style: TextStyle(color: Colors.white)),
                                    ))
                              ],
                            ),
                          )
                        ],
                      )),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Горячая Линия",
                                  style: TextStyle(fontSize: 19.0),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  "По номеру 112 круглосуточно принимают сообщения об угрозе.",
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Colors.blue[700],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: const Center(
                                      child: Text("Позвонить",
                                          style: TextStyle(color: Colors.white)),
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 150,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage('assets/images/call.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     const Text(
                      "Купите премиум для использования всех функции этого приложения!", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17.0, ),
                    ),
                   const SizedBox(height: 8,),
                    Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.blue[700],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: const Center(
                                child: Text("Купить",
                                    style: TextStyle(color: Colors.white)),
                              ))
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}

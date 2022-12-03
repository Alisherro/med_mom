import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class Parser extends StatefulWidget {
  const Parser({super.key});

  @override
  State<Parser> createState() => _ParserState();
}

class _ParserState extends State<Parser> {
  List<Pharm> pharmas = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWebSiteData();
  }

  getWebSiteData() async {
    final url = Uri.parse('https://sadykhan.kz/131-lekarstvennye-sredstva/');
    final resopnse = await http.get(url);
    dom.Document html = dom.Document.html(resopnse.body);

    final titles = html
        .querySelectorAll('div > a > span.content-title')
        .map((e) => e.innerHtml.trim())
        .toList();

    final prices = html
        .querySelectorAll('div > a > span.price-wrap > span')
        .map((e) => e.innerHtml.trim())
        .toList();

    final urlImages = html
        .querySelectorAll('div > a > span.product-image > img')
        .map((e) => e.attributes['src']!)
        .toList();

    setState(() {
      pharmas = List.generate(
          titles.length,
          (index) => Pharm(
              urlImage: 'https://sadykhan.kz/${urlImages[index]}',
              price: prices[index],
              title: titles[index]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          body: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 20,),
              itemCount: pharmas.length,
              itemBuilder: ((context, index) {
                final pharm = pharmas[index];
                return ListTile(
                  title: Text(pharm.title),
                  trailing: Text(pharm.price),
                  leading: Image.network(
                    pharm.urlImage,
                    width: 80,
                    fit: BoxFit.fitHeight,
                  ),
                );
              }))),
    );
  }
}

class Pharm {
  final String price;
  final String title;
  final String urlImage;

  Pharm({required this.price, required this.title, required this.urlImage});
}

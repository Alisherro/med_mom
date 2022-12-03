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
              Text(
                'Садыхан» – группа компаний, начавшая свою работу в 1996 году.',
                style: TextStyle(fontSize: 18),
              ),
              Container(
                width: size.size.width,
                height: size.size.height,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
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
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                  width: size.size.width,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text("Связаться", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pharm {
  final String price;
  final String title;
  final String urlImage;

  Pharm({required this.price, required this.title, required this.urlImage});
}

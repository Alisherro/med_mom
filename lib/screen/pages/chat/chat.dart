import 'dart:ui';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
        child: Column(
          children: [
            _top(),
            _body(),
          ],
        ),
      ),
    );
  }

  Widget _top() {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Задавайте вопросы ; )',
            style: TextStyle(
                fontSize: 24, color: Colors.white),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black12,
                ),
                child: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Avatar(
                        margin: const EdgeInsets.only(right: 15),
                        image: 'assets/images/${index + 1}.jpg',
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: Colors.white,
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 35),
          physics: const BouncingScrollPhysics(),
          children: [
            _itemChats(
              avatar: 'assets/images/2.jpg',
              name: 'Меирхан',
              chat:
                  'Что делать если ребенок часто толкается?',
              time: '17:20',
            ),
            _itemChats(
              avatar: 'assets/images/4.jpg',
              name: 'Адиль',
              chat: 'Какие упражнения лучше делать беременной?',
              time: '03.19',
            ),
            _itemChats(
              avatar: 'assets/images/5.jpg',
              name: 'Айгерим',
              chat: 'Почему очень важно здорово кушать будучи беременной',
              time: '02.53',
            ),
            _itemChats(
              avatar: 'assets/images/6.jpg',
              name: 'Бинара',
              chat: 'Какой лучше садик выбрать если рядом нет таких?',
              time: '11.39',
            ),
            _itemChats(
              avatar: 'assets/images/7.jpg',
              name: 'Мерей',
              chat:
                  'Подскажите, какие памперсы будут самыми лучшими для младенца?',
              time: '00.09',
            ),
            _itemChats(
              avatar: 'assets/images/8.jpg',
              name: 'Дайыр',
              chat:
                  'Как отцам лучше вести себя при родах?!',
              time: '00.09',
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemChats(
      {String avatar = '', name = '', chat = '', time = '00.00'}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ChatPage(),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        elevation: 0,
        child: Row(
          children: [
            Avatar(
              margin: const EdgeInsets.only(right: 20),
              size: 60,
              image: avatar,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$name',
                        style: const TextStyle(
                            fontSize: 17,),
                      ),
                      Text(
                        '$time',
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$chat',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _topChat(),
                _bodyChat(),
                const SizedBox(
                  height: 120,
                )
              ],
            ),
            _formChat(),
          ],
        ),
      ),
    );
  }

  _topChat() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Меирхан',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black12,
                ),
                child: const Icon(
                  Icons.call,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black12,
                ),
                child: const Icon(
                  Icons.videocam,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _bodyChat() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: Colors.white,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            _itemChat(
              avatar: 'assets/images/2.jpg',
              chat: 1,
              message:
                  'Всем привет, что делать если ребенок часто толкается?',
              time: '17:20',
            ),
            _itemChat(
              chat: 0,
              message: 'Это хорошо 🐣',
              time: '17.04',
            ),
            _itemChat(
              avatar: 'assets/images/5.jpg',
              chat: 1,
              message:
              'Обычно малыш начинает активно шевелиться после того, как мама покушает, особенно что-то сладкое',
              time: '17.20',
            ),
            _itemChat(
              avatar: 'assets/images/6.jpg',
              chat: 1,
              message:
              'Шевеления плода – это язык, на котором будущий ребенок говорит с мамой',
              time: '17.20',
            ),
            _itemChat(
              avatar: 'assets/images/7.jpg',
              chat: 1,
              message:
              ' Ребенок «видит мир» глазами мамы, воспринимает его через её эмоции.',
              time: '17.20',
            ),

          ],
        ),
      ),
    );
  }

  // 0 = Send
  // 1 = Recieved
  _itemChat({int? chat, String? avatar, message, time}) {
    return Row(
      mainAxisAlignment:
          chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        avatar != null
            ? Avatar(
                image: avatar,
                size: 50,
              )
            : Text(
                '$time',
                style: TextStyle(color: Colors.grey.shade400),
              ),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: chat == 0 ? Colors.indigo.shade100 : Colors.indigo.shade50,
              borderRadius: chat == 0
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )
                  : const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
            ),
            child: Text('$message'),
          ),
        ),
        chat == 1
            ? Text(
                '$time',
                style: TextStyle(color: Colors.grey.shade400),
              )
            : const SizedBox(),
      ],
    );
  }

  Widget _formChat() {
    return Positioned(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Ваше сообщение...',
              suffixIcon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue[300]),
                padding: const EdgeInsets.all(14),
                child: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              filled: true,
              fillColor: Colors.blueGrey[50],
              labelStyle: const TextStyle(fontSize: 12),
              contentPadding: const EdgeInsets.all(20),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;
  const Avatar({super.key, this.image, this.size = 50, this.margin = const EdgeInsets.all(0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

String getTruncatedTitle(String actualString, int maxLetters) {
  return actualString.length > maxLetters
      ? actualString.substring(0, maxLetters) + "..."
      : actualString;
}
import 'package:flutter/material.dart';
import './widgets/button.dart';
import './widgets/cardCon.dart';

void main() {
  runApp(const App());
}

// 위젯은 레고블록 위젯이 되어야 기능함.
// 모든 위젯은 build 함수를 만들어야함. 화면에 보여주는 함수
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 30, 34),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Welcom back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$5 194 462',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 33,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyButton(
                      text: 'Transfer',
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    MyButton(
                      text: 'Request',
                      bgColor: Colors.black,
                      textColor: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const cardCon(
                name: 'Euro',
                price: '6 426',
                type: 'EUR',
                icon: Icons.euro_sharp,
                isreversed: false,
                order: 1,
              ),
              const cardCon(
                name: 'Bitcoin',
                price: '3 426',
                type: 'BTC',
                icon: Icons.currency_bitcoin,
                isreversed: true,
                order: 2,
              ),
              const cardCon(
                name: 'Dollar',
                price: '33 426',
                type: 'USD',
                icon: Icons.attach_money_outlined,
                isreversed: false,
                order: 3,
              ),
            ], //전체 컬럼 리스트
          ),
        ),
      ),
    );
    // 제일처음에 기본 ui의 컨셉이 무엇인지 말해줘야함. 매터리얼이나 쿠퍼티노 둘 중하나.
  }
}

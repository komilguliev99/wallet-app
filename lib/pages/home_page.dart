import 'package:flutter/material.dart';
import 'package:wallet_app_ui/widgets/my_button.dart';
import 'package:wallet_app_ui/widgets/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/widgets/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.monetization_on,
            size: 30,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            color: Colors.blue.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.home, size: 35, color: Colors.white)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 35,
                      color: Colors.white,
                    ))
              ],
            )),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Cards',
                          style: TextStyle(fontSize: 28),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: const Icon(Icons.add),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  children: [
                    MyCard(
                        balance: 5500.80,
                        number: 12354656,
                        expiryMonth: 10,
                        expiryYear: 25,
                        color: Colors.deepPurple[300]),
                    MyCard(
                        balance: 4850.2,
                        number: 1234237,
                        expiryMonth: 8,
                        expiryYear: 27,
                        color: Colors.blue[300]),
                    MyCard(
                        balance: 45760.1,
                        number: 12354429,
                        expiryMonth: 11,
                        expiryYear: 24,
                        color: Colors.green[300]),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              ),
              const SizedBox(
                height: 45,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                        iconPath: 'lib/icons/send_money.png',
                        buttonText: 'Send'),
                    MyButton(
                        iconPath: 'lib/icons/credit_card.png',
                        buttonText: 'Pay'),
                    MyButton(
                        iconPath: 'lib/icons/bills.png', buttonText: 'Bills'),
                  ],
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    MyListTile(
                        iconPath: 'lib/icons/statistics.png',
                        title: 'Statistics',
                        subtitle: 'Payment and Income'),
                    SizedBox(
                      height: 25,
                    ),
                    MyListTile(
                        iconPath: 'lib/icons/transactions.png',
                        title: 'Transactions',
                        subtitle: 'Transaction history')
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

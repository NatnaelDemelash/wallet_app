import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../activity_list.dart';
import '../utils/balance_card.dart';
import '../utils/little_expense_card.dart';
import '../utils/my_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 248, 250, 1),
      body: SafeArea(
        child: Column(
          children: [
            // appBar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hi',
                            style: GoogleFonts.poppins(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'John',
                            style: GoogleFonts.poppins(fontSize: 28),
                          ),
                        ],
                      ),
                      Text(
                        'Today Sarurday, 14 Oct',
                        style: GoogleFonts.poppins(color: Colors.grey[700]),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(4)),
                    child: const Icon(
                      Icons.notification_add_rounded,
                      color: Color.fromRGBO(52, 152, 219, 1),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            // Balance
            const SizedBox(
              height: 200,
              child: BalanceCard(),
            ),
            const SizedBox(height: 25),

            // 3 buttons -> Transfer + Activities + Insight
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyButton(
                  imagePath: 'lib/icons/transfer.png',
                  buttonName: "Transfer",
                ),
                MyButton(
                  imagePath: 'lib/icons/activity.png',
                  buttonName: "Activities",
                ),
                MyButton(
                  imagePath: 'lib/icons/insight.png',
                  buttonName: "Insight",
                )
              ],
            ),

            const SizedBox(height: 5),
            // little Card
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 22.0),
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 10,
                        spreadRadius: 2,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LittleExpenseCard(
                        expenseType: 'Earned',
                        color: Colors.blue.shade800,
                        amount: 3460),
                    LittleExpenseCard(
                        expenseType: 'Spent',
                        color: Colors.red.shade400,
                        amount: 1890)
                  ],
                ),
              ),
            ),

            // Activity Colums -> Dominos Pizza + Dropbox
            SingleChildScrollView(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: ActivityList(
                        activityName: 'Statstics',
                        iconPath: 'lib/icons/statistics.png',
                        subText: 'Pyment and Income'),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: ActivityList(
                        activityName: 'Transactions',
                        iconPath: 'lib/icons/cash-flow.png',
                        subText: 'Transaction History'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Color.fromRGBO(52, 152, 219, 1),
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.bar_chart_rounded), label: 'Stat'),
          NavigationDestination(
              icon: Icon(Icons.credit_score), label: 'Credit'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

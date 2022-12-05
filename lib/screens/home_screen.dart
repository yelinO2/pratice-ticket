import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_style.dart';

class HomeSecreen extends StatelessWidget {
  const HomeSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('images/img_1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search",
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFF4F6FD),
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint("tap");
                      },
                      child: Text(
                        "View all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                TicketView(
                  fromshort: 'NYC',
                  from: "New-York",
                  toshort: "LDN",
                  to: "London",
                  flightTime: "8H 30M",
                  date: "4 Dec",
                  time: '3:30 AM',
                  number: '26',
                ),
                TicketView(
                  fromshort: 'LDN',
                  from: "London",
                  toshort: "NYC",
                  to: "New-York",
                  flightTime: "8H 30M",
                  date: "15 Dec",
                  time: '6:00 PM',
                  number: '26',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

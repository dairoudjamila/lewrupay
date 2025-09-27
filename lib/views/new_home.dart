import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lewrupay/config/palette.dart';
import 'package:lewrupay/routes/route.dart';
import 'package:lewrupay/views/data.dart';
import 'package:lewrupay/views/receive.dart';
import 'package:lewrupay/views/send.dart';
import 'package:lewrupay/views/credit.dart';

class NewHome extends StatefulWidget {
  const NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  bool isBalanceVisible = true;
  int balance = 20000;
  String devise = 'XAF';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              _buildBalanceCard(),
              _buildSearchBar(),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(radius: 25, child: Icon(Icons.person, size: 20)),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceCard() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: const Color(0xFFD5D5D5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            title: Text(
              'solde LewruPay',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2C3E50),
              ),
            ),
            subtitle: Text(
              isBalanceVisible ? '$devise $balance' : '$devise ********',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                isBalanceVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  isBalanceVisible = !isBalanceVisible;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withValues(alpha: 0.9)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey[400], size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: [
          InkWell(
            child: _gridViewItem('Send', Icons.upload, Palette.primary, () {
              Get.toNamed(NameRoute.send);
            }),
          ),
          _gridViewItem('Receive', Icons.download, Palette.primary, () {
            Get.toNamed(NameRoute.receive);
          }),
          _gridViewItem('Data', Icons.swap_vert, Palette.primary, () {
            Get.toNamed(NameRoute.data);
          }),
          _gridViewItem(
            'Credit',
            Icons.arrow_outward_sharp,
            Palette.primary,
            () {
              Get.toNamed(NameRoute.credit);
            },
          ),
        ],
      ),
    );
  }

  _gridViewItem(
    String title,
    IconData icon,
    Color color,
    void Function()? onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 70),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

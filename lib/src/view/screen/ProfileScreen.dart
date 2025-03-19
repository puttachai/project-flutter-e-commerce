import 'package:e_commerce_flutter/src/view/screen/SettingsScreen.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(ProfileScreen());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ProfileScreen(),
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//       ),
//     );
//   }
// }

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsScreen()),
                    );
                  },
                ),
                SizedBox(width: 20),
                Icon(Icons.notifications),
                SizedBox(width: 20),
                Icon(Icons.shopping_cart),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.orangeAccent,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'nagimarou',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Classic',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        children: [
                          Text('1 ผู้ติดตาม',
                              style: TextStyle(color: Colors.white)),
                          SizedBox(width: 10),
                          Text('6 กำลังติดตาม',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Purchases Section
            _sectionTitle("การสั่งซื้อของฉัน"),
            _iconRow([
              {'icon': Icons.card_travel, 'label': 'ชำระสินค้า'},
              {'icon': Icons.local_shipping, 'label': 'รับสินค้า'},
              {'icon': Icons.check_circle, 'label': 'ที่ต้องได้รับ'},
              {'icon': Icons.star, 'label': 'ให้คะแนน'},
            ]),

            Divider(),

            // Services Section
            _sectionTile("ShopeeFood", Icons.fastfood),
            _sectionTile("E-Service / E-Voucher", Icons.local_offer),

            Divider(),

            // Wallet Section
            _sectionTitle("My Wallet"),
            _iconRow([
              {'icon': Icons.account_balance_wallet, 'label': 'ShopPay'},
              {'icon': Icons.monetization_on, 'label': 'Shop Coins'},
              {'icon': Icons.credit_card, 'label': 'My ShopLater'},
              {'icon': Icons.discount, 'label': 'โค้ดส่วนลด'},
            ]),

            Divider(),

            // More services
            _sectionTile("My Insurance", Icons.health_and_safety),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }

  Widget _iconRow(List<Map<String, dynamic>> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.map((item) {
          return Column(
            children: [
              Icon(item['icon'], size: 30),
              SizedBox(height: 8.0),
              Text(item['label'], style: TextStyle(fontSize: 12)),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _sectionTile(String label, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.orange),
      title: Text(label),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}


// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Icon(Icons.menu),
//             Row(
//               children: [
//                 Icon(Icons.notifications),
//                 SizedBox(width: 20),
//                 Icon(Icons.shopping_cart),
//               ],
//             ),
//           ],
//         ),
//         backgroundColor: Colors.orange,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Profile Section
//             Container(
//               padding: EdgeInsets.all(16.0),
//               color: Colors.orangeAccent,
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage('assets/profile.jpg'),
//                   ),
//                   SizedBox(width: 16.0),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'nagimarou',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(height: 4.0),
//                       Text(
//                         'Classic',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(height: 8.0),
//                       Row(
//                         children: [
//                           Text('1 ผู้ติดตาม',
//                               style: TextStyle(color: Colors.white)),
//                           SizedBox(width: 10),
//                           Text('6 กำลังติดตาม',
//                               style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),

//             // Purchases Section
//             _sectionTitle("การซื้อของฉัน"),
//             _iconRow([
//               {'icon': Icons.card_travel, 'label': 'ที่ต้องชำระ'},
//               {'icon': Icons.local_shipping, 'label': 'ที่ต้องส่ง'},
//               {'icon': Icons.check_circle, 'label': 'ที่ต้องได้รับ'},
//               {'icon': Icons.star, 'label': 'โพสต์เเม'},
//             ]),

//             Divider(),

//             // Services Section
//             _sectionTile("ShopeeFood", Icons.fastfood),
//             _sectionTile("E-Service / E-Voucher", Icons.local_offer),

//             Divider(),

//             // Wallet Section
//             _sectionTitle("My Wallet"),
//             _iconRow([
//               {'icon': Icons.account_balance_wallet, 'label': 'ShopeePay'},
//               {'icon': Icons.monetization_on, 'label': 'Shopee Coins'},
//               {'icon': Icons.credit_card, 'label': 'My SPayLater'},
//               {'icon': Icons.discount, 'label': 'โค้ดส่วนลด'},
//             ]),

//             Divider(),

//             // More services
//             _sectionTile("My Insurance", Icons.health_and_safety),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _sectionTitle(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//           ),
//           Icon(Icons.arrow_forward_ios, size: 16),
//         ],
//       ),
//     );
//   }

//   Widget _iconRow(List<Map<String, dynamic>> items) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: items.map((item) {
//           return Column(
//             children: [
//               Icon(item['icon'], size: 30),
//               SizedBox(height: 8.0),
//               Text(item['label'], style: TextStyle(fontSize: 12)),
//             ],
//           );
//         }).toList(),
//       ),
//     );
//   }

//   Widget _sectionTile(String label, IconData icon) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.orange),
//       title: Text(label),
//       trailing: Icon(Icons.arrow_forward_ios, size: 16),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';
import '../../../../shared/widgets/custom_list_tile.dart';
import 'package:restora/route.dart' as route;

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 65,
                backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/6596/6596121.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(text: 'রহমত উল্লাহ', maxLines: 1),
              const SizedBox(
                height: 20,
              ),
              CustomListTile(
                leadingIcon: Icons.person,
                title: 'প্রোফাইল',
                trailingIcon: Icons.arrow_forward_ios_sharp,
                onTap: () {
                  Navigator.pushNamed(context, route.userProfileUpdate);
                },
              ),
              Divider(
                color: Colors.grey.shade200,
                height: 2.5,
                thickness: 2,
                //indent: 50,
                endIndent: 0,
              ),
              CustomListTile(
                leadingIcon: Icons.shopping_cart,
                title: 'পূর্বের অর্ডার',
                trailingIcon: Icons.arrow_forward_ios_sharp,
                onTap: () {
                  Navigator.pushNamed(context, route.orderHistory);
                },
              ),
              Divider(
                color: Colors.grey.shade200,
                height: 2.5,
                thickness: 2,
                //indent: 50,
                endIndent: 0,
              ),
              CustomListTile(
                leadingIcon: Icons.reviews_rounded,
                title: 'আপনার রিভিউ',
                trailingIcon: Icons.arrow_forward_ios_sharp,
                onTap: () {},
              ),
              Divider(
                color: Colors.grey.shade200,
                height: 2.5,
                thickness: 2,
                //indent: 50,
                endIndent: 0,
              ),
              CustomListTile(
                leadingIcon: Icons.favorite,
                title: 'পছন্দের রেস্তোরা',
                trailingIcon: Icons.arrow_forward_ios_sharp,
                onTap: () {},
              ),
              Divider(
                color: Colors.grey.shade200,
                height: 2.5,
                thickness: 2,
                //indent: 50,
                endIndent: 0,
              ),
              CustomListTile(
                leadingIcon: Icons.settings,
                title: 'সেটিংস',
                trailingIcon: Icons.arrow_forward_ios_sharp,
                onTap: () {},
              ),
              Divider(
                color: Colors.grey.shade200,
                height: 2.5,
                thickness: 2,
                //indent: 50,
                endIndent: 0,
              ),
              CustomListTile(
                leadingIcon: Icons.help,
                title: 'সাহায্য',
                trailingIcon: Icons.arrow_forward_ios_sharp,
                onTap: () {},
              ),
              Divider(
                color: Colors.grey.shade200,
                height: 2.5,
                thickness: 2,
                //indent: 50,
                endIndent: 0,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, route.loginPage),
                  child: const CustomText(
                    text: 'লগ-আউট',
                    colors: Colors.red,
                    maxLines: 1,
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}

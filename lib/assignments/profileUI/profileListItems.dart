import 'package:flutter/material.dart';


class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;

  const ProfileListItem({
    Key? key,
    required this.icon,
    required this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ).copyWith(
        bottom: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade300,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            this.icon,
            size: 25,
          ),
          SizedBox(width: 15),
          Text(
            this.text,
            style: TextStyle(
                fontWeight: FontWeight.w500),
          ),
          Spacer(),

        ],
      ),
    );
  }
}
class ProfileListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          ProfileListItem(
            icon: Icons.privacy_tip_outlined,
            text: 'Privacy',
          ),
          ProfileListItem(
            icon: Icons.history,
            text: 'Purchase History',
          ),
          ProfileListItem(
            icon: Icons.help,
            text: 'Help & Support',
          ),
          ProfileListItem(
            icon: Icons.settings,
            text: 'Settings',
          ),
          ProfileListItem(
            icon:Icons.person_add_alt,
            text: 'Invite a Friend',
          ),
          ProfileListItem(
            icon: Icons.logout,
            text: 'Logout',
            hasNavigation: false,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  final int selectedindex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    Key? key,
    required this.selectedindex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.shifting,
      backgroundColor: const Color(0xFFFFFFFF),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: widget.selectedindex == 0
              ? SvgPicture.asset(
                  'assets/home_selected_icon.svg',
                  width: 25,
                )
              : SvgPicture.asset('assets/home_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.selectedindex == 1
              ? SvgPicture.asset(
                  'assets/bookmark_selected_icon.svg',
                  width: 20,
                )
              : Image.asset('assets/Saved-Navbar-Icon.jpg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.selectedindex == 2
              ? SvgPicture.asset(
                  'assets/notification_selected_icon.svg',
                  width: 20,
                )
              : Image.asset('assets/Notif-Navbar-Icon.jpg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.selectedindex == 3
              ? SvgPicture.asset(
                  'assets/profile_selected_icon.svg',
                  width: 20,
                )
              : Image.asset('assets/Profile-Navbar-Icon.jpg'),
          label: '',
        ),
      ],
      currentIndex: widget.selectedindex,
      onTap: widget.onItemTapped,
    );
  }
}

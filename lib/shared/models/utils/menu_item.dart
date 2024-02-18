class Menu {
  Menu({
    required this.title,
    this.route = '',
    this.icon,
    this.hasNavigation = false,
    this.hasAlertPopup = false,
  });

  final String title;
  final String route;
  final String? icon;
  final bool hasNavigation;
  final bool hasAlertPopup;
}

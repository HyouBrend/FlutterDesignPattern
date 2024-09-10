class DropdownContent {
  DropdownContent({required this.resourceId, required this.menu});

  final int? resourceId;
  final String? menu;

  factory DropdownContent.fromJson(Map<String, dynamic> json) =>
      DropdownContent(resourceId: json["recourceId"], menu: json["menu"]);
}

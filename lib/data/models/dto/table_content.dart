class TableContent {
  TableContent(
      {required this.keyHeadline,
      required this.titleDesc,
      required this.isSelected});

  final int keyHeadline;
  final String titleDesc;
  bool isSelected;

  factory TableContent.fromJson(Map<String, dynamic> json) => TableContent(
      keyHeadline: json["keyHeadline"],
      titleDesc: json["titleDesc"],
      isSelected: json["isSelected"]);
}

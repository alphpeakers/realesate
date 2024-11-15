class ServiceModel {
  String title;
  String image;
  ServiceModel({required this.title, required this.image});
}

List<ServiceModel> content = [
  ServiceModel(title: 'Home\nLoan', image: 'asset/icons/Group 394.png'),
  ServiceModel(title: ' Sale\nAgreement', image: 'asset/icons/Group 395.png'),
  ServiceModel(title: 'Refer &\nEarn', image: 'asset/icons/Group 396.png'),
  ServiceModel(title: 'Legal\nServices', image: 'asset/icons/Group 393.png'),
  ServiceModel(title: 'Home\nRenovation', image: 'asset/icons/Group 1005.png'),
  ServiceModel(
      title: 'AC Service\n& Repair', image: 'asset/icons/Group 1005.png'),
];

//LegalModelService
class LegalModel {
  String title;
  String image;
  LegalModel({required this.title, required this.image});
}

List<ServiceModel> content1 = [
  ServiceModel(title: 'Rental\nAgreement', image: 'asset/icons/Group 372.png'),
  ServiceModel(
      title: ' Tenant\nVerification', image: 'asset/icons/Group 373.png'),
  ServiceModel(title: 'Sale\nAgreement', image: 'asset/icons/Group 374.png'),
  ServiceModel(
      title: 'Property Legal\nService', image: 'asset/icons/Group 375.png'),
];

//Recent search
class RecentSearchModel {
  String title;
  String description;
  String image;
  RecentSearchModel(
      {required this.title, required this.image, required this.description});
}

List<RecentSearchModel> content2 = [
  RecentSearchModel(
    title: 'Newyork,North Yorkshire',
    image: 'asset/images/Rectangle 257.png',
    description: 'For sale, 1-3 beds',
  ),
  RecentSearchModel(
      title: 'York station,York,North ',
      image: 'asset/images/Rectangle 258.png',
      description: 'For sale, 3-6 beds'),
  RecentSearchModel(
      title: 'York station,York,North',
      image: 'asset/images/Rectangle 259.png',
      description: 'For sale, 3-6 beds'),
];

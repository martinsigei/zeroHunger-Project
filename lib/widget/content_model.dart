class OnboardingContent{
  String image;
  String title;
  String description;
  OnboardingContent({required this.description,required this.image,required this.title});
}

List<OnboardingContent> contents=[
  OnboardingContent(description: 'We are committed to delivering fresh, quality, and sustainably sourced food products directly from local\n                         farmers to your doorstep.', image: "images/screen1.png", title: 'Place bulk orders, customize your selections, and schedule deliveries at your convenience.'),
  OnboardingContent(description: 'Our available payment methods include: Mobile Money\n    Transfers,Cash on Delivery and Credit/Debit Cards', image: 'images/screen2.png', title: 'Enjoy a hassle-free shopping experience with\n                          ZeroHunger Logistics.'),
  OnboardingContent(description: 'Optimizing transportation routes, reducing fuel consumption and minimizing the carbon footprint of food\n                                         deliveries.', image: 'images/screen3.png', title: 'Real-time customer orders, minimizing the risk\n      of overproduction and unsold inventory.')
];
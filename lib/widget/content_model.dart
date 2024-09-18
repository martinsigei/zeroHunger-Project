class OnboardingContent{
  String image;
  String title;
  String description;
  OnboardingContent({required this.description,required this.image,required this.title});
}

List<OnboardingContent> contents=[
  OnboardingContent(description: 'We are committed to delivering fresh, quality, and sustainably sourced food products directly from local farmers to your doorstep.', image: "images/screen5.jpg", title: 'Place bulk orders, customize your selections, and schedule deliveries at your convenience.'),
  OnboardingContent(description: 'Our available payment methods include: Mobile Money Transfers,Cash on Delivery and Credit/Debit Cards', image: 'images/sceen5.jpg', title: 'Enjoy a hassle-free shopping experience with\n                      ZeroHunger Logistics.'),
  OnboardingContent(description: 'ZeroHunger Logistics connects farmers directly with consumers to combat poverty, eliminate hunger, promote responsible consumption, and take action on climate change.', image: "images/sdgs.png", title: 'Empowering Communities, Nourishing Futures'),
  OnboardingContent(description: 'Optimizing transportation routes, reducing fuel consumption and minimizing the carbon footprint of food deliveries.', image: 'images/screen4.png', title: 'Real-time customer orders, minimizing the risk of overproduction and unsold inventory.')
];

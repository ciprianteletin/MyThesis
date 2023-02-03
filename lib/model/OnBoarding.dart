class OnBoarding {
  String title;
  String subtitle;
  String image;

  OnBoarding({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
      title: 'Easily choose a coordinator and a topic to complete your studies',
      subtitle:
          'Easily choose one of the coordinators and themes from the application. Do you have your own topic? Identify the coordinators who accept topics proposed by students.',
      image: 'assets/Onboarding-1.png'),
  OnBoarding(
      title:
          'Stay up to date with the stages necessary to complete your studies',
      subtitle:
          'Stay without emotions in completing the stages of completing your studies. The application will tell you at every moment what the next step is and by when it must be completed.',
      image: 'assets/Onboarding-2.png'),
  OnBoarding(
      title: 'Always keep in touch with your coordinator',
      subtitle:
          'Whatever question you have, your coordinator is just a message away. By creating a list of tasks, he will always stay informed.',
      image: 'assets/Onboarding-3.png'),
  OnBoarding(
      title: 'Submit and enjoy your vacancy',
      subtitle:
          'The final moment has come: submit the work through the application, and we will take care of the rest. Enjoy your new success!',
      image: 'assets/Onboarding-4.png'),
];

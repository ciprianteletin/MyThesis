class Thesis {
  final String title;
  final String keywords;
  final String teacher;
  final String shortDescription;
  final String description;
  final String imagePath;

  Thesis(
      {required this.title,
      required this.keywords,
      required this.teacher,
      required this.shortDescription,
      required this.description,
      required this.imagePath});
}

List<Thesis> studentThesisList = [
  Thesis(
      title: "Servless Computing",
      keywords: "Cloud, Architecture",
      imagePath: 'assets/thesis/cloud.png',
      shortDescription:
          "Design an application using the concept of Servless Computing",
      description:
          "Create a software solution for a real problem using the concept of Servless Concept. The application MUST be stored in Cloud and be fully scalable",
      teacher: "Conf. Dr. Pop Daniel"),
  Thesis(
      title: "Bitcoin Prediction",
      keywords: "Machine Learning, AI",
      imagePath: 'assets/thesis/bitcoin.jpg',
      shortDescription: "Predict the price of bitcoin",
      description:
          "Based on the news from the internet, try to predict as better as possible the price of Bitcoin",
      teacher: "Lect. Dr. Sancira Monica"),
  Thesis(
      title: "Kubernetes with Machine Learning",
      keywords: "DevOps, Kubernetes, AI",
      imagePath: 'assets/thesis/kubernetes.png',
      shortDescription: "Combine DevOps with Machine Learning",
      description:
          "There is a current demand of using Kubernetes in combination with Machine Learning",
      teacher: "Conf. Dr. Onchis Darian"),
  Thesis(
      title: "Comparation of event-driven and microservice architecture",
      keywords: "Architecture, desing, microservices",
      imagePath: 'assets/thesis/microservices.jpg',
      shortDescription: "Compare two different yet similar architectures",
      description:
          "Compare the well-known microservice architecture with the event-driven architecture regarding different features, such as Performance, Elasticity, etc",
      teacher: "Conf. Dr. Mindruta Cristina")
];

List<Thesis> teacherThesisList = [
  Thesis(
      title: "Servless Computing",
      keywords: "Cloud, Architecture",
      imagePath: 'assets/thesis/cloud.png',
      shortDescription:
          "Design an application using the concept of Servless Computing",
      description:
          "Create a software solution for a real problem using the concept of Servless Concept. The application MUST be stored in Cloud and be fully scalable",
      teacher: "Conf. Dr. Pop Daniel"),
  Thesis(
      title: "Data Warehouse",
      keywords: "Big Data, Databases",
      imagePath: 'assets/thesis/microservices.jpg',
      shortDescription:
          "Design an application using the concept of Data Warehouse",
      description:
          "Create a software solution where you collect data into a Warehouse and analyze it using different tools, such as Spark, Hadoop",
      teacher: "Conf. Dr. Pop Daniel"),
];

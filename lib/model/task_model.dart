class Task {
  final String title;
  final String category;
  final String description;
  final String state;

  Task(
      {required this.title,
      required this.category,
      required this.description,
      required this.state});
}

List<Task> tasksList = [
  Task(
      title: "Implement authentication mechanism",
      category: "Backend - Authentication",
      state: 'In progress',
      description:
          "Implement authentication capabilities for the backend application. In this task, try to also implement authorization"),
  Task(
      title: "Add machine learning model",
      category: "Machine Learning",
      state: 'Done',
      description:
          "Add a machine learning model that is able to predict the price of an used car by it's attributes"),
  Task(
      title: "Add yet another machine learning model",
      category: "Machine Learning",
      state: 'TODO',
      description:
          "Add a machine learning model that is able to predict the price of an apartment by it's attributes"),
  Task(
      title: "Smart Contract - Rent",
      category: "Blockchain",
      state: 'TODO',
      description:
          "Create a Smart Contract on Blockchain that will be able to collect automatically the rent from it's tenant"),
];

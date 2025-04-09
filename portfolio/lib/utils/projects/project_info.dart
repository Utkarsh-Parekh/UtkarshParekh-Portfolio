class ProjectInfo{
  final String image;
  final String title;
  final String subtitle;
  final List<String> techStack;
  final String githubLink;

  ProjectInfo({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.githubLink,
    required this.techStack,
});

}

List<ProjectInfo> projects = [

  ProjectInfo(image: 'assets/projects/grocery_logo.png', title: "Grocery App - Flutter", subtitle: "Designed and Created a Grocery Shopping app with Flutter Framework with Provider State Management library.Followed best practices in Flutter development to keep the code organized and modular.", githubLink: "github.com/Utkarsh-Parekh/Grocery-Shopping-App-Flutter/tree/master",techStack: ["Flutter","Provider","SmoothPageIndicator"]),
ProjectInfo(image: 'assets/projects/task_logo.png', title: "Tasks App - Flutter", subtitle: "Developed a Daily Task app using Flutter,Firebase. 📋The app allows users to Add,Update,delete the daily tasks. It features an intuitive UI and a clean design, offering an efficient way to manage daily tasks. ", githubLink: "github.com/Utkarsh-Parekh/Tasks-App-Flutter/tree/master",techStack: ["Flutter","Provider","Firebase"]),
  ProjectInfo(image: 'assets/projects/weather.png', title: "Weather App - Android", subtitle: "Weather Info App is a Dynamic & Responsive Android application which provides real-time weather updates for City searched by User by Utilizing Open Weather API", githubLink: "github.com/Utkarsh-Parekh/Weather",techStack: ["Android","Kotlin","Weather API"]),
  ProjectInfo(image: 'assets/projects/planets.png', title: "Planets - Android", subtitle: "Planets is a simple Static app which gives information about all planets.", githubLink: "github.com/Utkarsh-Parekh/Planeto",techStack: ["Android","Kotlin","RecyclerView"]),

];


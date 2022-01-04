class Badges {
  final String? name, image,link;

  Badges({this.name, this.image,this.link});
}

final List<Badges> demo_badges = [
  Badges(
    name: "Ajit Singh",
    image: "assets/images/developer_profile.png",
      link:"https://developers.google.com/profile/badges/profile/created-profile",
  ),
  Badges(
    name: "Maximilian Schwarzmüller",
    image: "assets/images/web_collab.png",
    link:"https://developers.google.com/profile/badges/codelabs/first-codelab",
  ),
  Badges(
    name: "Maximilian Schwarzmüller",
    image: "assets/images/flutter_app.png",
    link:"https://developers.google.com/profile/badges/playlists/intro-to-flutter",
  ),
  Badges(
    name: "Govind Mishra",
    image: "assets/images/beta.png",
    link:"https://developers.google.com/profile/badges/events/beta",
  ),
  Badges(
    name: "Geetanjali Goyal",
    image: "assets/images/android_studio.png",
    link:"https://developers.google.com/profile/badges/activity/android/install-android-studio",
    ),
  Badges(
    name: "Maximilian Schwarzmüller",
    image: "assets/images/quize.png",
    link:"https://developers.google.com/profile/badges/playlists/first-playlist",
     ),

];

class Badges {
  final String? image,link;

  Badges({ this.image,this.link});
}

final String image_string= "assets/images/";
final String link_string= "https://developers.google.com/profile/badges/";

final List<Badges> demo_badges = [
  Badges(
    image: image_string+"web_app.jpeg",
    link:link_string+"playlists/firebase/web-apps-with-firebase",
  ),
  Badges(
    image: image_string+"i:o.jpeg",
    link:link_string+"events/io/2022/attendee",
  ),
  Badges(
    image: image_string+"cloud_firestore.jpeg",
    link:link_string+"playlists/cloud/get_to_know_cloud_firestore",
  ),
  Badges(
    image: image_string+"developer_profile.png",
      link:link_string+"profile/created-profile",
  ),
  Badges(
    image: image_string+"f&f.png",
    link:link_string+"playlists/firebase/add_firebase_to_flutter",
  ),
  Badges(
    image: image_string+"web_collab.png",
    link:link_string+"codelabs/first-codelab",
  ),
  Badges(
    image: image_string+"flutter_app.png",
    link:link_string+"playlists/intro-to-flutter",
  ),
  Badges(
    image: image_string+"beta.png",
    link:link_string+"events/beta",
  ),
  Badges(
    image: image_string+"android_studio.png",
    link:link_string+"activity/android/install-android-studio",
    ),
  Badges(
    image: image_string+"quize.png",
    link:link_string+"playlists/first-playlist",
     ),

];

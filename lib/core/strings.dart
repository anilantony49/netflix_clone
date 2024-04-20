const kBaseUrl = "https://api.themoviedb.org/3";
const imageBaseUrl = "https://image.tmdb.org/t/p/w500";
const mainImage =
    "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Error%20image.jpg?alt=media&token=902c101f-c10e-4f4e-8318-aad84c640ff3";

// ======== Custom icons ========

String home = 'assets/icons/hut.png';
String newAndHot = 'assets/icons/play.png';
String fastLaughs = 'assets/icons/smile.png';
String search = 'assets/icons/search.png';
String downloads = 'assets/icons/down-arrow.png';
String screenCast = 'assets/icons/cast.png';
String setting = 'assets/icons/configuration.png';
String searchPlay = 'assets/icons/search-play.png';

String fastLaughPlay = 'assets/icons/fast-laugh-play.png';
String fastLaughPause = 'assets/icons/pause.png';
String fastLaughEmoji = 'assets/icons/laugh.png';
String fastLaughShare = 'assets/icons/share.png';
String fastLaughAdd = 'assets/icons/add.png';
String fastLaughVolumeMute = 'assets/icons/volume-mute.png';
String fastLaughVolume = 'assets/icons/volume.png';
String info = 'assets/icons/info.png';
String notification = 'assets/icons/notification.png';

// ======== Profile icons ========

String profile = 'assets/icons/profile.png';
String logo = 'assets/logos/netflix-logo.png';
String seriesLogo = 'assets/logos/netflix-series.png';
String filmLogo = 'assets/logos/netflix-film.png';

// ======== Image list ========

List imageList = [
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Better%20call%20saul.jpg?alt=media&token=1c1ccf01-997d-469c-a248-7cd0c6d754ba",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Desperate%20road.jpg?alt=media&token=0e324e78-5a0a-4095-aae7-2adb2db336a6",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Inception.jpeg?alt=media&token=47de596c-2926-4675-88bd-5e039de1e6fe",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Peaky%20blinders.jpeg?alt=media&token=85aae63e-ef7b-4ae4-bc12-f9d4de8426ec",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Pursuit%20of%20happiness.jpeg?alt=media&token=9dca06d0-7ad7-4aaf-9b3f-4a186867fc82",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Superbad.jpeg?alt=media&token=b0491f8a-d849-4696-accf-b505232e3b3a"
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/The%20Perks%20of%20being%20a%20Wallflower.jpeg?alt=media&token=248459e3-e56f-4192-b1bd-2c23d774bdb6",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/The%20last%20of%20us.jpg?alt=media&token=611b731f-3149-481e-8e2e-4adbfa14a75b",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Causeway.jpg?alt=media&token=06100b14-8cde-4614-95b9-b5ae42a2aac6",
];

List videoList = [
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Better%20call%20saul.mp4?alt=media&token=656898b1-863b-4b64-a740-a2de7e167afc",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Desperate%20road.mp4?alt=media&token=4a86b90c-f51f-4027-a5c4-5398c80e3aa8",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Inception.mp4?alt=media&token=55a11490-c5f3-42c4-ba90-d4049bb27081",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Peaky%20blinders.mp4?alt=media&token=0bd5f1ee-f757-419e-b425-31d02b19f22a",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Pursuit%20of%20happiness.mp4?alt=media&token=682883d0-a353-41f0-b13c-2e15074acc31",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Superbad.mp4?alt=media&token=4dcdd79d-8d32-4fa9-9676-3247d7fdab45",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/The%20Perks%20of%20being%20a%20Wallflower.mp4?alt=media&token=db135210-b647-4261-909a-bf6844f05a42",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/The%20last%20of%20us.mp4?alt=media&token=8d906ecc-010a-432b-bc3d-75d788005091",
  "https://firebasestorage.googleapis.com/v0/b/api-netflix-4acce.appspot.com/o/Causeway.mp4?alt=media&token=2c8e402b-fea4-4d61-bea9-9ccfb72ec31c",
];
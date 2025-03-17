# flashcurrent


## Video of Project

https://github.com/user-attachments/assets/277294f3-cb4b-4ac6-9141-c1a982a567ed
## Description
Flash Current is a dynamic and user-friendly news application designed to deliver real-time updates on global and local events. Developed using Flutter, the app ensures a seamless and responsive experience across multiple platforms, including Android, iOS, and the web. Flash Current aggregates news from various sources, categorizing them into different topics such as politics, technology, sports, entertainment, and business. Users can personalize their news feed by selecting their preferred categories, ensuring they receive relevant updates tailored to their interests. The app features a clean UI/UX with an intuitive layout that enhances readability and engagement. It also includes push notifications to keep users informed about breaking news. Additionally, Flash Current supports offline reading, allowing users to save articles for later access. With a focus on speed and efficiency, the app optimizes API calls to ensure swift loading times. Designed for modern readers, Flash Current is the go-to solution for staying updated with the latest happenings anytime, anywhere.
## Getting Started
### Dependencies

 - cupertino_icons: ^1.0.8 
 - line_icons: ^2.0.3
 - get: ^4.7.2
 - hive: ^2.2.3
 - hive_flutter: ^1.1.0
 - google_fonts: ^6.2.1
 - hive_generator: ^2.0.1
 - path_provider: ^2.1.5
 - cloud_firestore: ^5.6.5
 - firebase_auth: ^5.5.1
 - firebase_core: ^3.12.1
 - awesome_snackbar_content: ^0.1.4
 - lottie: ^3.2.0
 - carousel_slider: ^5.0.0
 - intl: ^0.19.0
 - smooth_page_indicator: ^1.2.1
 - url_launcher: ^6.3.1
  - auto_size_text_field: ^2.2.4
 - auto_size_text: ^3.0.0
 - curved_navigation_bar: ^1.0.6
 
### Firebase installation
 #### 1. Create a Firebase Project
 - Go to Firebase Console.
 - Click "Add Project" and enter your project name.
 - Configure Google Analytics (optional) and create the project.
#### 2. Add Firebase to your Flutter app
- Select flutter platform
- Install the Firebase CLI and log in (run firebase login)
- Install the Flutter SDK
- Create a Flutter project (run flutter create)
- Enter commands
- dart pub global activate flutterfire_cli
- flutterfire configure --project=project-43135
- In your project select which platforms you want to use
- Then automatcally it generates firebase_options.dart file.
- ### News api
- First singup newapi
- Then generate a apikey
- We use this apikey for appending the value to url
###  How approach the tash
- First authenticated the user
- Then used News api for fetching data of news
- In home page we categorise it and shows the news
- when we click the news it redirected the orginal use




# Application Movie DB
# https://developer.themoviedb.org

## Setup

Run the following commands from your terminal:

1) `git clone https://github.com/dev-mobile-vn/movie-flutter-bloc` to clone this repository

2) `flutter pub get` in the project root directory to install all the required dependencies.
3) Config to run app
   [View](https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/config_run.png) 


## Note 
 Since calling the Movie DB API requires an API key, I’ve pushed the .env file to avoid everyone having to fetch a new API key. Please note that during development, you should keep the .env file in .gitignore to prevent it from being pushed to the repository and to avoid exposing sensitive information.
   
## Screenshots

<table width="100%">
  <tbody>
    <tr>
      <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/wellcome.png"/></td>
      <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/login.png"/></td>
      <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/login2.png"/></td>
    </tr>
    <tr>
      <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/home.png"/></td>
      <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/upcoming.png"/></td>
      <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/detail.png"/></td>
    </tr>
    <tr>
     <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/detail2.png"/></td>
     <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/profile.png"/></td>
     <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/edit_profile.png"/></td>
    </tr>
     <tr>
     <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/sub.png"/></td>
     <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/payment.png"/></td>
     <td width="1%"><img src="https://raw.githubusercontent.com/dev-mobile-vn/movie-flutter-bloc/refs/heads/master/assets/screenshots/review.png"/></td>
    </tr>
  </tbody>
</table>

## Video 
[Play movie](https://youtu.be/PvvRz4UFN1w)

## Design 
[View](https://www.figma.com/design/j7M1gdcFDISNPI9aHyg31e/Mova---Movie-Streaming-App-UI-Kit?node-id=727-25421&p=f&t=eTXzBifZd2gZvSxM-0)

# Research
- https://medium.com/@ayalon.idan/getit-v8-migration-examples-24344ed1a130
- https://medium.com/@sasicse990
- https://medium.com/search?q=getIt+fluter
- https://medium.com/@akhil-ge0rge
- https://www.burkharts.net/apps/blog/lets-get-this-party-started-startup-orchestration-with-getit/

## Build app cmd
- flutter build apk --release lib/main.dart --flavor dev
- flutter build appbundle lib/main.dart --flavor dev
- flutter build appbundle lib/main.dart --flavor prod
- flutter build ipa --release lib/main.dart --flavor dev
- flutter build ipa --release lib/main.dart --flavor prod

## 
- flutter pub run build_runner build --delete-conflicting-outputs


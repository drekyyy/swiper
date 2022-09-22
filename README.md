Simple app to showcase state persistance with bloc. Consists of three screens that you can swipe right or left to get to.
<br />
Used:
- flutter_bloc (state management)
- hydrated_bloc (extension to bloc, automatically persists and restores bloc and cubit states.)
- path_provider (provides path to commonly used locations on the filesystem, required for hydrated_bloc to store states)

to run:
- either do `flutter build apk` to get apk which u can install on an android device (or to save time, use the apk provided in "APK READY FOR ANDROID" folder).
- or do `flutter pub get`, launch your emulator or plug in mobile phone in debug mode and start debugging.

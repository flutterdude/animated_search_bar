# Animated Search Bar in Flutter
This repository contains a Flutter tutorial that demonstrates how to create a stylish and animated search bar for your Flutter applications. The tutorial is designed to be easy to follow, even for those who are new to Flutter animations.

## Features
* Custom UI design
* Animation techniques
* Keyboard switching
* Clean architecture for maintainable code
* BLoC state management (or your preferred method)
* Callback functions

![Alt Text](https://firebasestorage.googleapis.com/v0/b/personal-b745e.appspot.com/o/Thumbnails%2Fanimated_search_bar.jpg?alt=media&token=fa520259-5610-4543-a6b9-4b743b1c5343)

## Getting Started

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/flutterdude/animated_search_bar.git
    ```
2. **Navigate to the Project Directory:**
    ```bash
    cd animated_search_bar
   flutter pub get
    ```
3. **Run the App:**
    ```bash
    flutter run
    ```
4. **Follow along with the YouTube Tutorial:**
   [Animated Search Bar in Flutter](https://www.youtube.com/watch?v=_nR9i4XojfA&t=560s)

# File Descriptions

## main.dart
This Flutter code establishes the foundational structure for our animated search bar. It imports necessary libraries, sets up the main entry point (main() function), and defines the root widget (MyApp). The MaterialApp widget within MyApp configures the app's title, visual theme (using Material 3 design and a "deep purple" color scheme), default font, and designates the Home widget (from home.dart) as the initial screen upon launch. In essence, this code provides the basic framework and styling for the app, while the actual content and functionality will be implemented within the Home widget and other components it interacts with.

## home.dart
This file contains the Home widget, which serves as the main screen for our app. The Home widget is a StatefulWidget that maintains the state of the search bar's visibility and text input. It consists of a Scaffold widget with an AppBar and a body that can display either the search bar or search results based on the user's interaction. The build() method within the Home widget dynamically renders the appropriate content based on the current state, allowing users to toggle between the search bar and search results seamlessly.

## animated_search_bar.dart
This part of code defines a custom widget called AnimatedSearchBar. It creates a visually appealing search bar with a rounded container, white background, a thin grey border, and a search icon on the left. The central feature is the FadingTextAnimation widget, which dynamically displays a series of placeholder texts ("Search Amazon Pay", "Search for billers or contacts", "Pay by name or phone number") with a fading animation, presumably to guide the user on how to use the search bar.

## fading_text_animation.dart
This file defines a StatefulWidget named FadingTextAnimation that creates an animation effect where text fades in, slides up, pauses, then fades out and slides down, cycling through a list of provided texts.

Key features:
- Takes a list of texts to animate, a duration for each animation cycle, and a curve to control the animation's easing.
- Uses an AnimationController to manage the animation timing.
- Employs Tween animations to control the opacity and position of the text.
- Utilizes FadeTransition and SlideTransition to apply the animations to the text widget.
- Includes a delay after the fade-in and slide-up to create a pause before the fade-out and slide-down.
- Automatically cycles through the list of texts, updating the displayed text after each animation cycle.

In essence, this code snippet provides a reusable way to create visually engaging fading and sliding text animations in Flutter applications.

## actual_search_bar.dart
This file defines a StatefulWidget called ActualSearchBar. This widget creates a search bar with the following features:
- Back Button: An image asset ("assets/back_arrow.png") acts as a back button, triggering the onBackTap callback when tapped.
- Search Field: A TextField allows users to input search queries. The keyboard type (_textInputType) can be toggled between text and numeric input.
- Keypad Toggle Button: An image asset ("assets/numeric_keypad.png" or "assets/text_keypad.png") toggles the keyboard type between text and numeric input when tapped. It also briefly unfocuses and refocuses the TextField to ensure the keyboard change takes effect.

In summary, this widget provides a functional search bar with a back button and the ability to switch between text and numeric input, enhancing user experience in search-related scenarios.


## Connect with Me!

* **[Learn more on my Medium](https://medium.com/flutterdude)**
* **[Explore my YouTube](https://www.youtube.com/@theflutterdude)**
* **[Explore my Website](https://flutterdude.com/)**
* **[Connect on LinkedIn](https://www.linkedin.com/company/flutterdude)**
* **Have questions? Email me:** hello@flutterdude.com
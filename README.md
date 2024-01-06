# AnimatedTap Widget

## Overview
The `AnimatedTap` widget is a Flutter widget designed to provide a simple yet effective tap animation. When the user taps on the widget, it scales down to a specified minimum scale and then scales back up once the tap is released. This widget is highly customizable and can be used to enhance the user interaction in your Flutter applications.

## Features
- Customizable duration for the scale animation.
- Customizable minimum scale value.
- Custom tap callback function.
- Exception handling for invalid scale values.

## Usage
To use the `AnimatedTap` widget, simply wrap it around the widget you want to apply the tap effect to. You can customize the duration of the animation, the minimum scale value, and provide a function that will be called when the widget is tapped.

### Example:

```dart
AnimatedTap(
  duration: const Duration(milliseconds: 200),
  minScale: 0.9,
  onTap: () {
    print("Widget tapped!");
  },
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
  ),
)
```

### Parameters:

* duration: Duration of the scale animation. Default is 200 milliseconds.
* onTap: Callback function that is called when the widget is tapped.
* child: The widget to apply the tap effect to.
* minScale: The minimum scale value when the widget is tapped. Must be between 0.0 and 1.0. Default is 0.9.

### Installation

To use the AnimatedTap widget in your project, simply copy the provided Dart file into your Flutter project and import it where necessary.

### Contributing

Contributions to the `AnimatedTap` widget are welcome. Please feel free to fork the repository, make your changes, and create a pull request.

### License

This `AnimatedTap` widget is provided under the MIT License.


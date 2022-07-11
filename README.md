A customizable toggle switch widget to add asset background images to the toggle switch.

<img alt="All fancy images" src="https://github.com/Smit56R/fancy_dark_mode_toggle/blob/master/assets/images/screenshots/all_fancy_switches.gif?raw=true" width="175">

## Features

Use this package to give fancy background images to the switch for your app.

## Parameters

- Required

  1. `bool value`: A boolean value that determines whether the switch is active or not.
  2. `ValueChanged<bool> onChanged`: A callback function called whenever the switch is tapped.
  3. `double height`: A double value that sets height of the switch.
  4. `String activeModeBackgroundImage`: A string value that contains the path of the asset background image when the switch is active.
  5. `String inactiveModeBackgroundImage`: A string value that contains the path of the asset background image when the switch is inactive.

- Optional
  1. `Color activeThumbColor`: Sets color of the thumb when the switch is active. Default value is `Colors.white`.
  2. `Color inactiveThumbColor`: Sets color of the thumb when the switch is inactive. Default value is `Colors.white`.
  3. `Image activeThumbImage`: Used to give image to the thumb when the switch is active.
  4. `Image inactiveThumbImage`: Used to give image to the thumb when the switch is inactive.

## Getting started

- Add the package to your dependencies

```
dependencies:
  fancy_switch: ^0.0.1
```

- Import the package to the dart file

```dart
import 'package:fancy_switch/fancy_switch.dart';
```

- Use it as widget wherever it is convenient

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
        actions: [
            FancySwitch(
                value: foo,
                onChanged: foobar,
                height: 25,
                activeModeBackgroundImage: 'assets/active_mode_background_color.png',
                inactiveModeBackgroundImage: 'assets/inactive_mode_background_color.png',
            ),
        ],
      ),
    );
  }
}
```

## Usage

[Switching between dark mode and light mode using FancySwitch](https://github.com/Smit56R/fancy_dark_mode_toggle)

## Support the pacakge (optional)

If you find this package useful, you can support it for free by giving it a thumbs up at the top of this page. Here's another option to support the package:

<a href="https://www.buymeacoffee.com/smitrajrana" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

## Contributing to this package

If you would like to contribute to the package, go [here](https://github.com/Smit56R/fancy_switch).

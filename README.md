
# Easy Onboard 💙

<br/>


![version](https://img.shields.io/pub/v/easy_onboard) [![tyypgzl - easy_onboard](https://img.shields.io/static/v1?label=tyypgzl&message=easy_onboard&color=blue&logo=github)](https://github.com/tyypgzl/easy_onboard "Go to GitHub repo")  ![pub](https://img.shields.io/github/license/tyypgzl/easy_onboard) ![isues](https://img.shields.io/github/issues/tyypgzl/easy_onboard) [![forks - easy_onboard](https://img.shields.io/github/forks/tyypgzl/easy_onboard?style=social)](https://github.com/tyypgzl/easy_onboard) [![stars - easy_onboard](https://img.shields.io/github/stars/tyypgzl/easy_onboard?style=social)](https://github.com/tyypgzl/easy_onboard) 

<br/>

- [Getting Started](#getting-started)
- [Installing](#installing)
  - [Depend on it](#depend-on-it)
  - [Install It](#install-it)
  - [Import it](#import-it)
- [Usage](#usage)
- [Screenshots](#screenshots)

## Getting Started 
<br/>

  **It is an easy to use package for flutter projects.** <br/>
  <br/>

 -   you need to do a quick project and you care about design. Include the package in your project and use it quickly.
 -   You just have to write the texts and the image widget.
 -   Write your primary color and color your project.



 <br/>
 
 
 
# Installing

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  easy_onboard: ^1.0.2
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```
$ pub get
```

with `Flutter`:

```
$ flutter pub get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:easy_onboard/easy_onboard.dart';
```
<br/>

# Usage
<br/>
  

First, include the package in your project.Then add the code below to the widget tree.
<br/>

  

> Do not leave any missing parameters.

<br/>

```dart

Onboard(
          primaryColor: const Color(0xff6C63FF),
          onboardPages: [
            OnboardModel(imagePath: 'imagePath', title: 'title', subTitle: 'subTitle'),
            OnboardModel(imagePath: 'imagePath', title: 'title', subTitle: 'subTitle'),
            OnboardModel(imagePath: 'imagePath', title: 'title', subTitle: 'subTitle'),
          ],
          lastText: 'Start',
          nextText: 'Next',
          skipText: 'Skip',
          skipButtonPressed: () {},
        ),

```
<br/>

- The primary color variable is the color theme of the package. 

- It takes the OnboardModel in the onboardPages list and the number of models must be bigger than 2.

- OnboarModel contains imagePath,title,subtitle and these fields cannot be empty.
<br/>

```
Don't forget to define the images in pubspec.yaml.
```

<br/>

```dart

  assets:
    - assets/images/

```




<br/>

- lastText, nextText,skipText are string definitions and appear on the screen.

- Write in the skipButtonPressed function what to do after the Onboard screen. 

<br/>

##### **FOR EXAMPLE**


```dart

  skipButtonPressed: () {
		 Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
		  },

```


<br/>

# Screenshots

<br/>

<img src="https://github.com/tyypgzl/easy_onboard/blob/main/screenshots/1.png?raw=true"  width="200"/> <img src="https://github.com/tyypgzl/easy_onboard/blob/main/screenshots/2.png?raw=true"  width="200"/> <img src="https://github.com/tyypgzl/easy_onboard/blob/main/screenshots/3.png?raw=true"  width="200"/> 




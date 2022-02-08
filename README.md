
# Easy Onboard




![version](https://img.shields.io/pub/v/easy_onboard) [![tyypgzl - easy_onboard](https://img.shields.io/static/v1?label=tyypgzl&message=easy_onboard&color=blue&logo=github)](https://github.com/tyypgzl/easy_onboard "Go to GitHub repo")  ![pub](https://img.shields.io/github/license/tyypgzl/easy_onboard) ![isues](https://img.shields.io/github/issues/tyypgzl/easy_onboard) [![forks - easy_onboard](https://img.shields.io/github/forks/tyypgzl/easy_onboard?style=social)](https://github.com/tyypgzl/easy_onboard) [![stars - easy_onboard](https://img.shields.io/github/stars/tyypgzl/easy_onboard?style=social)](https://github.com/tyypgzl/easy_onboard) 
<br/>

## Getting Started 💙 
<br/>

  **It is an easy to use package for flutter projects.** <br/>
  <br/>

 -   you need to do a quick project and you care about design. Include the package in your project and use it quickly.
 -   You just have to write the texts and the image widget.
 -   Write your primary color and color your project.



 <br/>

## Usage
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
<br/>

## Screenshots

<br/>




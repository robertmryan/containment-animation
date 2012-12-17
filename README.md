# Container View Animation

--

## Introduction

This is an iOS application, created in response to a question on Stack Overflow, [Problems with transitionWithView and animateWithDuration](http://stackoverflow.com/questions/13885603). This is an extremely simple demonstration of using animation to animate both the changing of the child view controller as well as letting the child view controller animate some UI changes on the parent controller's view.

## Classes

`AppDelegate` - This is the standard app delegate, unchanged from the standard template.

`ViewController` - This is a the container view controller, which has (a) a container subview with a couple of `UILabel` fields; (b) a segmented control for picking between two child controllers; and (c) a container subview for showing of the child view controller's view. When you change the segmented control, this will animate the changing of the child view.

`StoogeViewController` and `MarxViewController` - These are two child view controllers presented on `ViewController`. These are table view controllers that simply show a static list of values. When you select a value, it will animate the updating two text fields in the parent controller, `ViewController`.

## Notes

This was developed using Xcode 4.5.2 for devices running iOS 5 or later.

Please note that this is a "throw away" demonstration, and in fact I may not keep it around on github for very long.

If you have any questions, I would suggest clicking on the github "issues" button and creating something there. Discussion of this demonstration on Stack Overflow is not a good use of that service, and such discussion and Q&A would likely be deleted promptly as being "too localized", i.e. not of interest to the broader community. I will keep an eye out for issues that are posted here, though.

--

16 December 2012

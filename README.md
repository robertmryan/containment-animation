# Container View Animation

--

## Introduction

This is an iOS application, created in response to a question on Stack Overflow, [Problems with transitionWithView and animateWithDuration](http://stackoverflow.com/questions/13885603). This is an extremely simple demonstration of using animation to animate both the changing of the child view controller as well as letting the child view controller animate some UI changes on the parent controller's view.

This has been changed so that when you click on a value from a child view controller, it will simultaneously update the `UILabel` fields in the parent as well as animate the swapping of the child view controller. This makes no sense from a functional flow of the app, but it's just intended to demonstrate multiple animations happening at the same time. I've even animated the changing of the segmented control, just to demonstrate three different animations going on at the same time. If I were doing this in a real app, if I wanted the changing of the text labels to be in conjunction with the changing of the switched control, I'd probably put the switched control in the same `topContainerView` that the two labels are in, to reduce from three animation blocks to only two, but it seems to work as it is.

## Classes

`AppDelegate` - This is the standard app delegate, unchanged from the standard template.

`ViewController` - This is a the container view controller, which has (a) a container subview with a couple of `UILabel` fields; (b) a segmented control for picking between two child controllers; and (c) a container subview for showing of the child view controller's view. When you change the segmented control, this will animate the changing of the child view.

`ChildViewController` - This is table view controllers that is intended to be a child controller used by the container view controller, `ViewController`. It simply show a static list of values. The app actually doesn't use this directly, but rather the following two view controllers use it. I've just moved the common code from the following two controllers, to avoid unnecessary repetition of code.

`StoogeViewController` and `MarxViewController` - These are two child view controllers, subclassed from `ChildViewController`, are presented as child controllers from the `ViewController` custom container view controller.

## Notes

This was developed using Xcode 4.5.2 for devices running iOS 5 or later.

Please note that this is a "throw away" demonstration, and in fact I may not keep it around on github for very long.

If you have any questions, I would suggest clicking on the github "issues" button and creating something there. Discussion of this demonstration on Stack Overflow is not a good use of that service, and such discussion and Q&A would likely be deleted promptly as being "too localized", i.e. not of interest to the broader community. I will keep an eye out for issues that are posted here, though.

--

16 December 2012

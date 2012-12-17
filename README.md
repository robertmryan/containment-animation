# Container View Animation

--

## Introduction

This is an iOS application, created in response to a question on Stack Overflow, [Problems with transitionWithView and animateWithDuration](http://stackoverflow.com/questions/13885603). This is an extremely simple demonstration of using animation to animate both the changing of the child view controller as well as letting the child view controller animate some UI changes on the parent controller's view.

## Classes

`AppDelegate` - This is the standard app delegate, unchanged from the standard template.

`ViewController` - This is a `UITableView` subclass for the main view, the list of categories. This class parses the XML, and presents the list of categories. For how to retrieve the category names, take a look at the `UITableViewDataSource` delegate methods in this class. For information on how to pass the category dictionary entry to the `DetailViewController`, look at the `prepareForSegue` method.

`StoogeViewController` and `MarxViewController - These are two table view controllers that simply show a static list of values. When you select a value, it will update two text fields in the `ViewController`.

## Notes

This was developed using Xcode 4.5.2 for devices running iOS 5 or later.

Please note that this is a "throw away" demonstration, and in fact I may not keep it around on github for very long.

If you have any questions, I would suggest clicking on the github "issues" button and creating something there. Discussion of this demonstration on Stack Overflow is not a good use of that service, and such discussion and Q&A would likely be deleted promptly as being "too localized", i.e. not of interest to the broader community. I will keep an eye out for issues that are posted here, though.

--

16 December 2012

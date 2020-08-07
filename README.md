# feedback-examples


- [x] [listview-scrollviewreader](#listview-scrollviewreader)
- [ ] [recents-tab-sample](#recents-tab-sample)
- [ ] [navigationtitle-large](#navigationtitle-large)
- [ ] [listview-editmode-move](#listview-editmode-move)
- [ ] [listrowbackground-differences](#listrowbackground-differences)
- [ ] [displaymodebuttonissue](#displaymodebuttonissue)
- [ ] [texttruncation](#texttruncation)

## listview-scrollviewreader

**Title:** ListView should suport ScrollViewReader<br>
**Feedback Number:** FB8094063<br>
**Submitted:** July 21, 2020

ListView has a scroll view, it should support ScrollViewReader for programmatic scrolling to specific content. Currently there is no way to programmatically scroll a ListView to a specific row/section.

Currently when a ScrollViewReader is embedded within a ListView all of the formatting that ListView provides automatically is removed. This breaks the ListView.

There is no obvious way to get ListView style formatting when using a ScrollView + ScrollViewReader + (Lazy)VStack for the content. This requires the developer to reimplement the most basic ListView formatting and functionality.

### Communications
**Me** 
_July 22, 2020_
Tried again after seeing the following in the Xcode 12 beta 3 release notes, however the issue remains: using a List within a ScrollViewReader still does not scroll.

List may now be used with ScrollViewReader . (35471164)

**Apple** 
_July 30, 2020_
Thank you for filing this feedback report. We reviewed your report and determined the behavior you experienced is currently functioning as intended.

We won’t scroll the List if there aren’t enough rows to scroll. There are only 10 rows here.

You can close this feedback by clicking on the "Close Feedback" link. Thank you.

### Resolution
I was doing it wrong


## recents-tab-sample

**Tool:** Toolbar item in principal location conflicts with navigation title regardless of mode<br>
**Feedback Number:** FB8071544<br>
**Submitted:** July 19, 2020

Issue:
When setting a toolbar item to use the principal placement and displaying a view with a navigation title and a display mode of any value, the toolbar item is not displayed.

Expected behavior:
Similar to the “Recents” tab in the phone app, the toolbar item (in this case a segmented picker) should be visible, and the navigation title should only appear while the table is completely scrolled to the top. When the user scrolls the list to see further content, the navigation bar should become opaque/blurred background and the navigation title scrolled underneath but without being visible in the navigation bar.

Attached is a sample app that *should* replicate the behavior of the “Recents” tab in terms of layout of navigation title and toolbar items. However, when the navigation title is set, then only the title is displayed. If the navigation title is not set then the segmented picker is visible. In the case of the large/automatic display style, if there is no navigation title then there is a blank space enforced at the top of the view for the unset title.

## navigationtitle-large

**Title:** ScrollView within NavigationView immediately hides navigation title with automatic/large<br>
**Feedback Number:** FB8140531<br>
**Submitted:** July 24, 2020

Repro:
- extract attached project
- use simulator or preview to test
- tap the “Scroll” tab item
- begin scrolling the view
- note: the “Scroll” title immediately jumps into the navigation bar and adjusts the scroll offset suddenly
- tap the “List” tab item
- begin scrolling the view
- note: the “List” title slides up under the navigation bar and into the title position as expected (smoothly) and does obviously adjust the scroll offset

Expected output:
Both uses behave the same

## listview-editmode-move

**Title:** List edit reorder control changes divider trailing inset<br>
**Feedback Number:** FB8141728<br>
**Submitted:** July 24, 2020

Repro:
- extract attached project
- build and run
- tap “SwiftUI” tab
- tap “Edit” button
- note: when put into edit mode the following: even without delete mode enabled the leading side offsets change, the reorder control is displayed on each cell but the trailing inset for the divider changes

- tap the “UIKit” tab
- tap the “Edit” button
- note: when put into edit mode the divider trailing insets are not changed when the reorder is displayed

## listrowbackground-differences

**Title**: `List(_:id:...)` does not respect listRowBackground for content<br>
**Feedback Number:** FB8165662
**Submitted:** July 26, 2020

Repro:
- run attached example project
- tap/click on the “List Only” tab
- note the first row and second row have colors applied to background colors
- tap/click on the “`List(\_:id:…)`” tab
- note that none of the rows have a background color applied
- tap/click on the “List{ForEach}” tab
- note that all of the rows have a background color applied

Expected behavior:
All examples would have colors applied

## DisplayModeButtonIssue

**Title:** NavigationView in compact vertical size class shows displayModeButtonItem assert after two pushes<br>
**Feedback Number:** FB8209786<br>
**Submitted:** July 29, 2020

Repro steps:
- unpack attached project
- build for iPhone device
- tap the “One” link
- tap the “Two” link
- open Xcode’s console
- note the following:
  ```
  [Assert] displayModeButtonItem is internally managed and not exposed for DoubleColumn style. Returning an empty, disconnected UIBarButtonItem to fulfill the non-null contract.
  ```

## TextTruncation

**Title:** Text.TruncationMode operates incorrectly with multiline content<br>
**Feedback Number:** FB8288914<br>
**Submitted:** August 6, 2020

When a `Text` view contains text that is longer than one line and a text truncation mode is applied the truncation happens only on the final line regardless of mode.

Assume the text is “This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.” (pulled from the docs: https://developer.apple.com/documentation/swiftui/text/truncationmode(\_:)) Below are how they are rendered.

TruncationMode.tail:
```
This is a block of
text that will show
up in a text element
as multiple
lines. The text will
fill the available s…
```

TruncationMode.middle:
```
This is a block of
text that will show
up in a text element
as multiple
lines. The text will
available…uncated.
```

TruncationMode.head:
```
This is a block of
text that will show
up in a text element
as multiple
lines. The text will
…ally, be truncated.
```

Clearly the `.tail` case appears correctly while `.head` and `.middle` are incorrect.

Check out the attached playground for repro

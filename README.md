# feedback-examples

## listview-scrollviewreader 

Title: ListView should suport ScrollViewReader
Feedback Number: FB8094063
Submitted: July 21, 2020

ListView has a scroll view, it should support ScrollViewReader for programmatic scrolling to specific content. Currently there is no way to programmatically scroll a ListView to a specific row/section.

Currently when a ScrollViewReader is embedded within a ListView all of the formatting that ListView provides automatically is removed. This breaks the ListView.

There is no obvious way to get ListView style formatting when using a ScrollView + ScrollViewReader + (Lazy)VStack for the content. This requires the developer to reimplement the most basic ListView formatting and functionality.

## recents-tab-sample

Tool: Toolbar item in principal location conflicts with navigation title regardless of mode
Feedback Number: FB8071544
Submitted: July 19, 2020

Issue:
When setting a toolbar item to use the principal placement and displaying a view with a navigation title and a display mode of any value, the toolbar item is not displayed.

Expected behavior:
Similar to the “Recents” tab in the phone app, the toolbar item (in this case a segmented picker) should be visible, and the navigation title should only appear while the table is completely scrolled to the top. When the user scrolls the list to see further content, the navigation bar should become opaque/blurred background and the navigation title scrolled underneath but without being visible in the navigation bar.

Attached is a sample app that *should* replicate the behavior of the “Recents” tab in terms of layout of navigation title and toolbar items. However, when the navigation title is set, then only the title is displayed. If the navigation title is not set then the segmented picker is visible. In the case of the large/automatic display style, if there is no navigation title then there is a blank space enforced at the top of the view for the unset title.

## navigationtitle-large

Title: ScrollView within NavigationView immediately hides navigation title with automatic/large
Feedback Number: FB8140531
Submitted: July 24, 2020

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

Title: List edit reorder control changes divider trailing inset
Feedback Number: FB8141728
Submitted: July 24, 2020

Repro:
- extract attached project
- build and run
- tap “SwiftUI” tab
- tap “Edit” button
- note: when put into edit mode the following: even without delete mode enabled the leading side offsets change, the reorder control is displayed on each cell but the trailing inset for the divider changes

- tap the “UIKit” tab
- tap the “Edit” button
- note: when put into edit mode the divider trailing insets are not changed when the reorder is displayed


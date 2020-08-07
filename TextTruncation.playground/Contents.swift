//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
  @State var truncationMode: Text.TruncationMode = .tail
  var body: some View {
    VStack {
      Spacer()

      Picker(selection: $truncationMode, label: Text("Truncation Mode")) {
        Text("head").tag(Text.TruncationMode.head)
        Text("middle").tag(Text.TruncationMode.middle)
        Text("tail").tag(Text.TruncationMode.tail)
      }
      .pickerStyle(SegmentedPickerStyle())
      Text("This is the song that never ends. Yes it goes on and on my friends. Some people started singing it, not knowing what it was. And they'll continue signing forever just  because")
        .fixedSize(horizontal: false, vertical: true)
        .truncationMode(truncationMode)
        .lineLimit(3)

      Spacer()

      // https://developer.apple.com/documentation/swiftui/text/truncationmode(_:)
      Text("This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.")
          .frame(width: 150, height: 150)
          .truncationMode(truncationMode)

      Spacer()
    }
  }
}

// Present the view controller in the Live View window
PlaygroundPage.current.setLiveView(
  ContentView()
    .frame(width: 320, height: 400)
)

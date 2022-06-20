import SwiftUI

struct ContentView: View {
  @State var selected: Bool = false
  @State private var columnVisibility =
  NavigationSplitViewVisibility.doubleColumn

  var body: some View {
    NavigationSplitView(columnVisibility: $columnVisibility) {
      Button {
        selected.toggle()
      } label: {
        Text("Flip")
      }
    } detail: {
      // Uncomment this VStack and the detail page will update
//      VStack {
        if selected {
          Text("Is true")
        } else {
          Text("Is false")
        }
//      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


//-- Created by frimpongOpokuAgyemang on 28/12/2020.


import SwiftUI

struct AppStartPage: View {
	var body: some View {
		TabView{
			AllChatsPage()
				.tabItem{
					Image(systemName: "livephoto")
					Text("Status")
				}
			AllChatsPage()
				.tabItem{
					Image(systemName: "phone")
					Text("Calls")
				}
			CameraPage()
				.tabItem{
					Image(systemName: "camera")
					Text("Camera")
				}
			AllChatsPage()
				.tabItem{
					Image(systemName: "message")
					Text("Chats")
				}
			
			
			AllChatsPage()
				.tabItem{
					Image(systemName: "gearshape")
					Text("Settings")
				}
			
		}
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		AppStartPage()
	}
}

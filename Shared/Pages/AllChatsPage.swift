//  Created by frimpongOpokuAgyemang on 27/12/2020.
//

import SwiftUI

struct AllChatsPage: View {
	@State var noBackButton  = false
	var body: some View {
		GeometryReader{ geometry in
			VStack{
				NavigationView{
					ScrollView{
						VStack{
							IconTextField()
								.padding([.leading,.trailing],20)
							HStack{
								Button(action:{print("here")}) {
									Text("Broadcast Lists")
								}.padding(.leading,20)
								Spacer()
								Button(action:{print("New groups here")}) {
									Text("New Group")
								}.padding(.trailing,20)
							}
							Divider()
							ChatList(noBackButton: self.$noBackButton)
								.frame(minHeight: 100 * 10)
								.listStyle(PlainListStyle())
								.navigationTitle(self.noBackButton ? "" : "Chats")
								.navigationBarItems(leading: (Button(action:{}){Text("Edit")}), trailing:(Button(action:{}){Image(systemName:"square.and.pencil")}) )
						}
					}
				}
				
			}
		}
	}
}

struct ChatList : View {
	@Binding var noBackButton : Bool
	var body : some View {
		GeometryReader{ geo in
			List(1...10, id:\.self){ num in
				NavigationLink(
					destination:
							Text("Here we go again --- \(num)")
								.onAppear(){
									self.noBackButton.toggle()
								}
								.onDisappear(){
									self.noBackButton.toggle()
								}
				){
					ChatItem()
				}
			}.onAppear {
				UITableView.appearance().isScrollEnabled = false
			}
		}
	}
}
struct AllChatsPage_Previews: PreviewProvider {
	static var previews: some View {
		AllChatsPage()
	}
}

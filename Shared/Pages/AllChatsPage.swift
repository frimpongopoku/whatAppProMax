//  Created by frimpongOpokuAgyemang on 27/12/2020.
//

import SwiftUI

struct AllChatsPage: View {
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
							ChatList()
								.frame(minHeight: 100 * 10)
								.listStyle(PlainListStyle())
								.navigationTitle("Chats")
								.navigationBarItems(leading: (Button(action:{}){Text("Edit")}), trailing:(Button(action:{}){Image(systemName:"square.and.pencil")}) )
						}
					}
				}
				
			}
		}
	}
}

struct ChatList : View {
	var body : some View {
		GeometryReader{ geo in
			List(1...10, id:\.self){ num in
				NavigationLink(destination:Text("Here we go again --- \(num)")){
					Button{}label:{
						ChatItem()
					}
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

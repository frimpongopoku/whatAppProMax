//
//  AllChatsPage.swift
//  MorphDesigns
//
//  Created by frimpongOpokuAgyemang on 27/12/2020.
//

import SwiftUI

struct AllChatsPage: View {
	var body: some View {
		VStack{
			NavigationView{
				
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
						.listStyle(PlainListStyle())
						.navigationTitle("All Chats")
					
				}
			}
			
		}
	}
}

struct ChatList : View {
	var body : some View {
		List(1...8, id:\.self){ num in
			NavigationLink(destination:Text("Here we go again --- \(num)")){
				Button{}label:{
					ChatItem()
				}
			}
		}
	}
}
struct AllChatsPage_Previews: PreviewProvider {
	static var previews: some View {
		AllChatsPage()
	}
}

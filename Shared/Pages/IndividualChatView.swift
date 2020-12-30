//
//  IndividualChatView.swift
//  whatAppProMax (iOS)
//
//  Created by frimpongOpokuAgyemang on 29/12/2020.
//

import SwiftUI

struct IndividualChatView: View {
	var body: some View {
		ZStack{
			VStack{
				ForEach(1...6, id:\.self){ num in
					if(num % 2 == 0){
						OneMessageView(leading: true)

					}else{
						OneMessageView(leading: false)
					}
				}
			}
			VStack{
				Spacer()
				BottomTextingArea()
				
			}
			
			
		}
	}
}

struct HeaderContent : View {
	var leadingContent   = true
	var body : some View {
		HStack{
			if(leadingContent){
				Spacer()
				Image("mangoes")
					.resizable()
					.scaledToFit()
					.frame(width:60, height:40)
					.clipShape(Circle())
				Text("David Olubayo")
			} else{
				Spacer()
					
				HStack(spacing:30){
					Button(action:{}){
						Image(systemName:"video")
							.font(.title)
					}
					Button(action:{}){
						Image(systemName:"phone")
							.font(.title)
					}
				}
			}
			
		}
	}
}

struct BottomTextingArea: View {
	@State var message : String = ""
	
	var body : some View {
		HStack{
			Button(action:{}){
				Image(systemName:"plus")
					.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
					.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
			}.padding(.leading)
			TextEditor(text: $message)
				.border(Color.ghostWhite, width: 1)
				.font(.system(size:15))
				.frame(height:35)
				.frame(minHeight:50)
			HStack(spacing:20){
				Button(action:{}){
					Image(systemName:"camera")
						.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
						.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
				}
				Button(action:{}){
					Image(systemName:"mic")
						.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
						.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
				}
			}.padding(.trailing)
		}.frame(height:53).background(Color(.systemBackground))
	}
}


struct TextBox: View {
	@State var message : String = ""
	var body : some View {
		TextEditor(text: $message)
			.border(Color.ghostWhite, width: 3)
			.font(.system(size:15))
			.frame(minHeight:50)
		
	}
}
struct IndividualChatView_Previews: PreviewProvider {
	static var previews: some View {
		IndividualChatView()
	}
}

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
//			BottomTextingArea()
			TextBox()
			
//			HeaderContent()
			//				Text("Welcome To Individual Chatting")
			
		}
	}
}

struct HeaderContent : View {
	var body : some View {
		HStack{
			Spacer()
			Image("mangoes")
				.resizable()
				.scaledToFit()
				.frame(width:60, height:40)
				.clipShape(Circle())
			Text("David Olubayo")
			Spacer()
			HStack(spacing:20){
				Button(action:{}){
					Image(systemName:"video")
						.font(.title)
				}
				Button(action:{}){
					Image(systemName:"phone")
						.font(.title)
				}
			}.padding(.trailing,15)
			
		}
	}
}

struct BottomTextingArea: View {
	var body : some View {
		Text("Here we go again")
			.padding()
			
			.padding()
	}
}


struct TextBox: View {
	@State var message : String = ""
	var body : some View {
		
		RoundedRectangle(cornerRadius: 55555, style: .continuous)
			.stroke(lineWidth: 2)
			.foregroundColor(.ghostWhiteDeep)
			.frame(height:50)
			.padding([.leading,.trailing])
			.overlay(
				TextField("Message here...", text: $message)
					.padding([.leading, .trailing],50)
			)
		
		
		
		
		
//		TextField("Message...", text: $message)
//			.padding()
//			.overlay((
//				RoundedRectangle()
//
//					.stroke(lineWidth: 5)
//
//					.foregroundColor(.ghostWhite)
//
//					.frame(maxWidth:.infinity)
//
//					.cornerRadius(555555)
//			))
//			.padding([.leading, .trailing], 20)
//	}
	}
}
struct IndividualChatView_Previews: PreviewProvider {
	static var previews: some View {
		IndividualChatView()
	}
}

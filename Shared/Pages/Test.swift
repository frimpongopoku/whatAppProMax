//
//  Test.swift
//  whatAppProMax (iOS)
//
//  Created by frimpongOpokuAgyemang on 28/12/2020.
//

import SwiftUI

struct Test: View {
    var body: some View {
			ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/){
				List {
					ForEach(1...5, id: \.self){ _ in
					Text("here")
						.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
					}
					
					
				}.frame(height:500)

//				VStack{
//					ChatList()
//				}
			
			}
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}

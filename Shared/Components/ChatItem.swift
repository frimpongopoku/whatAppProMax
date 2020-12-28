
//  Created by frimpongOpokuAgyemang on 27/12/2020.
//

import SwiftUI

struct ChatItem: View {
	var body: some View {
		HStack(spacing:15){
			Image("photo")
				.resizable()
				.frame(width:50, height:50)
				.scaledToFit()
				.cornerRadius(100000)
				.overlay(
					Circle()
						.trim(from: 0.5, to: 1)
						.stroke(lineWidth: 3)
						.foregroundColor(Color.orange)
						.frame(width:60, height:60)
				)
				.overlay(
					Circle()
						.trim(from:0.05 , to:0.45 )
						.stroke(lineWidth: 3)
						.foregroundColor(Color.orange)
						.frame(width:60, height:60)
				)
				.shadow(radius: 2)
			VStack(alignment:.leading,spacing:8){
				Text("Person One Chat")
					.foregroundColor(Color.black)
					.multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
				Text("This is the last text sent to the guy wlalal from me")
					.foregroundColor(.gray)
					.font(.caption)
			}.frame(maxWidth:.infinity)
			Spacer()
			//				Spacer().frame(width: 10)
		}.padding(10)
		
	}
}

struct ChatItem_Previews: PreviewProvider {
	static var previews: some View {
		ChatItem()
	}
}

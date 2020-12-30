
//  Created by frimpongOpokuAgyemang on 29/12/2020.
//

import SwiftUI

struct OneMessageView: View {
	var leading   = true;
    var body: some View {
			HStack{
				if( !leading){
				Spacer()
        Text("Hey there, I'm using whatsapp")
					.font(.system(size:15))
					.padding(10)
					.padding([.leading, .trailing], 10 )
					.background(Color("w-green"))
					.foregroundColor(Color.white)
					.cornerRadius(4)
					.shadow(radius: 1)
					.padding(.trailing, 10)
					.frame(maxWidth:300, alignment: .trailing)
				}else{
					Text("Hey there, I'm using whatsapp")
						.font(.system(size:15))
						.padding(10)
						.padding([.leading, .trailing], 10 )
						.background(Color.gray)
						.foregroundColor(Color.white)
						.cornerRadius(4)
						.shadow(radius: 1)
						.padding(.leading, 10)
						.frame(maxWidth:300, alignment: .leading)
					Spacer()
					
				}
				
			}
	
			
		}
}

struct OneMessageView_Previews: PreviewProvider {
    static var previews: some View {
        OneMessageView()
    }
}


//  Created by frimpongOpokuAgyemang on 28/12/2020.
//

import SwiftUI

struct CameraPage: View {
	@State var showActionSheet = false;
	@State var showSheet = false;
	@State var image : UIImage?
	
	var body: some View {
		VStack{
			if( image == nil){
				Image("mangoes")
					.resizable()
					.scaledToFit()
					.frame(maxWidth:.infinity, maxHeight:300)
					.cornerRadius(10)
			}else{
				Button(action: { self.showSheet.toggle()}){
					Image(uiImage: image!)
						.resizable()
						.scaledToFit()
						.frame(width:300, height:300)
						.cornerRadius(10)
				}
			}
		}.onAppear(){
			self.showActionSheet.toggle()
		}
		.actionSheet(isPresented: $showActionSheet) {
			ActionSheet(title:Text( "Choose Media Access "),
									message:Text("Pick Image from camera or gallery"), buttons: [
				.default(Text("Photo Library"))
					{self.showSheet.toggle(); self.showActionSheet.toggle()},
				.default(Text("Camera")),
				.cancel()
			])
		}.sheet(isPresented: $showSheet){
			ImagePickerView(exitPicker: $showSheet, image: $image, shouldBeResized: true, byPercentage: true, percentageQuality:0.25)
		}
	}
	
	
	func compressAndReturn(image: UIImage)->UIImage?{
		print("compressed version");
		if let img = image.resized(toWidth:200) {
			return img
		}
		return UIImage(named:"mangoes");
	}
}

struct CameraPage_Previews: PreviewProvider {
	static var previews: some View {
		CameraPage()
	}
}

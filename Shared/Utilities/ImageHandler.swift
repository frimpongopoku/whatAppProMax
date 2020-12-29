//  Created by frimpongOpokuAgyemang on 28/12/2020.
//

import Foundation
import SwiftUI

struct ImagePickerView : UIViewControllerRepresentable {
	@Binding var exitPicker : Bool
	@Binding var image  : UIImage?
	var shouldBeResized : Bool  = false// Should the image be resized on selection?
	//---- Only one of these two is used. You either resize by ( width, or by percentage )
	var byPercentage : Bool = false
	var percentageQuality = 0.3
	var byWidth = false
	var toWidth = 250.0
	
	// --- Controller connection to Coordinator setup here --------
	func makeUIViewController(context: Context) -> some UIViewController {
		let pickerController = UIImagePickerController();
		pickerController.delegate = context.coordinator;
		return pickerController
	}
	func makeCoordinator() -> Coordinator {
		return Coordinator(pickerViewReference: self)
	}
	
	func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
	}

	
	//-------------- COORDINATOR --------------------
	
	class Coordinator : NSObject,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
		var pickerReference : ImagePickerView
		
		init(pickerViewReference:ImagePickerView){
			self.pickerReference = pickerViewReference
		}
		// --- User's selected image is accessed here
		func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo
																info: [UIImagePickerController.InfoKey : Any]) {
			
			if let selectedImage = info[.originalImage] as? UIImage {
				print("No resize mode ---- \(selectedImage)")
				if(!pickerReference.shouldBeResized ||
						(pickerReference.shouldBeResized &&
						 !pickerReference.byWidth && !pickerReference.byPercentage)){
					
					pickerReference.exitPicker = false;
					pickerReference.image = selectedImage;
					return;
				}
				
				//------- Resize image in background thread -----
				DispatchQueue.global(qos: .userInitiated).async{
					[weak self] in
					print("------- Started resizing in background --------- ")
					var resizedImg : UIImage? = nil
					
					if(( self?.pickerReference.byWidth) != nil && self?.pickerReference.byWidth == true){
						let width = self?.pickerReference.toWidth
						resizedImg = selectedImage.resized(toWidth:  CGFloat(width ?? 200))
					}
					
					if(( self?.pickerReference.byPercentage) != nil && self?.pickerReference.byPercentage == true){
						let perc = self?.pickerReference.percentageQuality
						resizedImg = selectedImage.resized(withPercentage:CGFloat(perc ?? 0.3) )
						
					}
					
					print("I am in resize mode ---- \(String(describing: resizedImg))")
					
					//---- Send resized image to the main thread ----
					DispatchQueue.main.async {
						[weak self] in
						print (resizedImg!)
						self?.pickerReference.exitPicker = false;
						self?.pickerReference.image = resizedImg;
					}
					
				}
			}
		}
	}
	
	
}


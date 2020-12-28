//
//  ImageHandler.swift
//  whatAppProMax (iOS)
//
//  Created by frimpongOpokuAgyemang on 28/12/2020.
//

import Foundation
import SwiftUI

struct ImagePickerView : UIViewControllerRepresentable {
	@Binding var exitPicker : Bool
	@Binding var image  : UIImage?
	func makeCoordinator() -> Coordinator {
		return Coordinator(pickerViewReference: self)
	}
	
	func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
	}
	
	class Coordinator : NSObject,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
		var pickerReference : ImagePickerView
		
		init(pickerViewReference:ImagePickerView){
			self.pickerReference = pickerViewReference
		}
		func imagePickerController(_ picker: UIImagePickerController,
															 didFinishPickingMediaWithInfo
																info: [UIImagePickerController.InfoKey : Any]) {
			if let selectedImage = info[.originalImage] as? UIImage {
				print(selectedImage)
				pickerReference.exitPicker = false ;
				pickerReference.image = selectedImage
				
			}
		}
	}
	
	func makeUIViewController(context: Context) -> some UIViewController {
		let pickerController = UIImagePickerController();
		pickerController.delegate = context.coordinator;
		return pickerController
	}
}

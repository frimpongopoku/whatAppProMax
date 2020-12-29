//
//  Image-Ext.swift
//  whatAppProMax (iOS)
//
//  Created by frimpongOpokuAgyemang on 29/12/2020.
//
// -- source : https://stackoverflow.com/questions/29137488/how-do-i-resize-the-uiimage-to-reduce-upload-image-size
import Foundation
import SwiftUI

extension UIImage {
	func resized(withPercentage percentage: CGFloat, isOpaque: Bool = true) -> UIImage? {
					let canvas = CGSize(width: size.width * percentage, height: size.height * percentage)
					let format = imageRendererFormat
					format.opaque = isOpaque
		print("Fresh width----> \(size.width)")
		print("Fresh Height ----> \(size.height)")
					return UIGraphicsImageRenderer(size: canvas, format: format).image {
							_ in draw(in: CGRect(origin: .zero, size: canvas))
					}
			}
			func resized(toWidth width: CGFloat, isOpaque: Bool = true) -> UIImage? {
					let canvas = CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))
					let format = imageRendererFormat
					format.opaque = isOpaque
					return UIGraphicsImageRenderer(size: canvas, format: format).image {
							_ in draw(in: CGRect(origin: .zero, size: canvas))
					}
			}
	
}

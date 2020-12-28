//
//  IconTextField.swift
//  whatAppProMax (iOS)
//
//  Created by frimpongOpokuAgyemang on 28/12/2020.
//

import SwiftUI

struct IconTextField: View {
    var body: some View {
			HStack {
					Image(systemName: "magnifyingglass")
						.renderingMode(.template)
						.foregroundColor(.secondary)
					TextField("", text: .constant("Search"))
						.foregroundColor(.secondary)
						.font(.system(size: 16))
			}
			.padding(10)
			.overlay(
				RoundedRectangle(cornerRadius: 10)
					.stroke(lineWidth: 1)
					.foregroundColor(Color.ghostWhite)
			)
		}
}

struct IconTextField_Previews: PreviewProvider {
    static var previews: some View {
        IconTextField()
    }
}

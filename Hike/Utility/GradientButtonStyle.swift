//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Samuel Adekunle on 21/07/2025.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nil Coalescing
                
                configuration.isPressed ?
                LinearGradient(colors: [.customGreyMedium, .customGreyLight], startPoint: .top, endPoint: .bottom)
                :
                LinearGradient(colors: [.customGreyLight, .customGreyMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}

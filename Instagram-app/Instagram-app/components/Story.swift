//
//  Story.swift
//  Instagram-app
//
//  Created by Mehdi on 31/07/2023.
//

import SwiftUI

struct Story: View {
    var image: String = "profile"
    var name: String = "Your Story"
    
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors:[.red,
                                                   .purple,
                                                   .red,
                                                   .orange,
                                                   .yellow,
                                                   .orange],
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing),
                            lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            Text(name)
                .font(.caption)
        }
    }
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        Story()
    }
}

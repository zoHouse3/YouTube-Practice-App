//
//  TagSliderView.swift
//  MeTube
//
//  Created by Eric Barnes - iOS on 11/17/23.
//

import SwiftUI

struct TagSliderView: View {
    let tags = ["news", "music", "health", "live", "clothing", "Rhythm & Blues", "Gaming", "Food", "Nature", "Scratching", "Mixes", "Real Estate"]
    var body: some View {
        ZStack {
            Color.white
            ScrollView(.horizontal) {
                HStack {
                    Image(systemName: "safari")
                        .font(.title3)
                        .padding(8)
                        .background(
                        RoundedRectangle(cornerRadius: 11)
                            .fill(.gray.opacity(0.2))
                        )
                        .padding(.leading)
                    
                    ForEach(0..<tags.count) { index in
                        Text(tags[index])
                            .font(.callout)
                            .padding(8)
                            .padding(.horizontal, 5)
                            .background(
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.gray.opacity(0.2))
                            )
                    }
                    
                    Button(action: {print("sending feedback")}, label: {
                        Text("Send feedback")
                            .bold()
                    })
                    .padding(.horizontal)
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    TagSliderView()
}

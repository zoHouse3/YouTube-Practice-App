//
//  ShortsVideoGrid.swift
//  MeTube
//
//  Created by Eric Barnes - iOS on 11/17/23.
//

import SwiftUI

// TODO: extract components into their own subviews
struct ShortsVideoGrid: View {
    let shortsRowLayout: [GridItem] = [
        GridItem(.flexible(minimum: 300)),
        GridItem(.flexible(minimum: 300))
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            // shorts header
            HStack {
                Image(systemName: "play.rectangle.fill")
                    .font(.title)
                    .foregroundStyle(.red)
                
                Text("Shorts")
                    .font(.title2)
                    .bold()
                
                Spacer()
            }
            .padding(.horizontal)
            
    
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                    RoundedRectangle(cornerRadius: 10)
                }
                // .frame(maxHeight: 290)
                .padding([.top,])
                .padding(.horizontal, 10)
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                    RoundedRectangle(cornerRadius: 10)
                }
                // .frame(maxHeight: 290)
                .padding([.bottom])
                .padding(.horizontal, 10)
            }
        }
        
    }
    
    var shortsGridItem: some View {
        ZStack {
            Image("worldHopper")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }

}

#Preview {
    ShortsVideoGrid()
}

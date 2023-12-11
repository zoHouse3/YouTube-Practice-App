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
            // SHORTS HEADER
            HStack {
                Image(systemName: "lasso.badge.sparkles")
                    .font(.title)
                    .foregroundStyle(.blue)
                
                Text("Shorts")
                    .font(.title2)
                    .bold()
                
                Spacer()
            }
            .padding(.horizontal)
            
            // SHORTS VIDEOS
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 12)
                    RoundedRectangle(cornerRadius: 12)
                }
                .padding([.top])
                .padding(.horizontal, 8)
                
                HStack {
                    RoundedRectangle(cornerRadius: 12)
                    RoundedRectangle(cornerRadius: 12)
                }
                .padding([.bottom])
                .padding(.horizontal, 8)
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

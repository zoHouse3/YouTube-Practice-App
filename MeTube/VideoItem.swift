//
//  VideoItem.swift
//  MeTube
//
//  Created by Eric Barnes - iOS on 11/17/23.
//

import SwiftUI

struct VideoItem: View {
    var imageName: String
    
    var body: some View {
        VStack {
            // Thumbnail Image
            Image(imageName)
                .resizable()
                .frame(maxHeight: 250)
        
            bottomInfoView
        }
    }
    
    var bottomInfoView: some View {
        VStack {
            HStack {
                Text("From your Watch later playlist")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(.leading)
                
                Spacer()
            }
            
            HStack(alignment: .top) {
                Image("thyroneHeadshot")
                    .resizable()
                    .scaledToFill()
                    .background(.red)
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Sir - Canvas")
                        .font(.headline)
                    Text("Wale ~ 788K views ~ 3 weeks ago")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button(action: {print("tapped")}, label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.black)
                        .rotationEffect(.degrees(90))
                })
                .padding(.top,6)
            }
            .padding(.horizontal)
            .padding(.vertical, 5)
        }
    }

}

#Preview {
    VideoItem(imageName: "afroChill")
}

//
//  ListingItemView.swift
//  AirbnbCloneApp
//
//  Created by Kadir Yildiz on 6/9/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            // Images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Listing Details
            
            HStack(alignment: .top) {
                // Details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 miles away ")
                        .foregroundStyle(.gray)
                    
                    Text("September 3 - 10 ")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$567 ")
                            .fontWeight(.semibold)
                        Text("night ")
                    }
                    .foregroundStyle(.black)
                    
                }
                
                Spacer()
                
                // Rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                        
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}

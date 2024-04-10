//
//  ProfileHeaderview.swift
//  TikTokTutorial
//
//  Created by Jatin Patel on 4/6/24.
//

import SwiftUI

struct ProfileHeaderview: View {
    var body: some View {
        VStack(spacing: 16, content: {
            VStack(spacing: 8, content: {
                
                // Profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                // Profile username
                Text("@Maza")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
            })
            
            // stats view
            HStack(spacing: 16, content: {
                UserStatView(value: 1, title: "Following")
                UserStatView(value: 5, title: "Followers")
                UserStatView(value: 7, title: "Likes")
            })
            
        })
    }
}

#Preview {
    ProfileHeaderview()
}

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack(content: {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
            
        }).frame(width: 80, alignment: .center)
    }
}

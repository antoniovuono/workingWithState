//
//  HomeView.swift
//  LearnState
//
//  Created by Antonio Vuono on 03/12/22.
//

import SwiftUI

struct HomeView: View {
    @State var count = 0
    @State var likes = 0
    @State var likeImageName = "heart"
    @State var imageColor = Color.black
    
    var body: some View {
        VStack {
            HStack(spacing: 24) {
                Button {
//                    count = count + 1
                    count -= 1
                } label: {
                  Text("-")
                    .offset(y: -2)
                    .font(.largeTitle)
                    .frame(width: 56, height: 56)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                }
                
                Text("\(count)")
                    .font(.largeTitle)
                
                Button {
//                   count = count + 1
                    count += 1
                } label: {
                    Text("+")
                      .offset(y: -2)
                      .font(.largeTitle)
                      .frame(width: 56, height: 56)
                      .background(Color.blue)
                      .foregroundColor(.white)
                      .clipShape(Circle())
                      .shadow(radius: 10)
                }
            }
            
            Divider()
            
            //Instagram clone and example
            
            VStack() {
                HStack {
                    Image("shrek")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                    
                    Text("Shrek")
                        .font(.footnote)
                        .bold()
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                }
                .padding(.horizontal)
                
                Image("post")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400)
                    .clipped()
                
                HStack(spacing: 16) {
                    Button {
                        likes += 1
                        likeImageName = "heart.fill"
                        if(likes >= 1) {
                            imageColor = Color.red
                        }
                    } label: {
                        Image(systemName: likeImageName)
                            .font(.system(size: 15, weight: .semibold))
                            .imageScale(.large)
                            .foregroundColor(imageColor)
                    }
                    
                    Button {
                        likes = 0
                    } label: {
                        Image(systemName: "bubble.right")
                            .font(.system(size: 15, weight: .semibold))
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane")
                            .font(.system(size: 15, weight: .semibold))
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                }
                .padding(.leading, 6)
                .padding(.top, 6)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("\(likes) \(likes > 1 ? "likes" : "like")")
                        .font(.system(size: 14, weight: .semibold))
                        .fontWeight(.semibold)
                    
                    HStack(spacing: 4) {
                        Text("shrek")
                            .font(.footnote)
                            .fontWeight(.bold)
                        
                        Text("De quebras no meu pântano.")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
                .padding(.top, 2)
                .padding(.leading, 12)
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

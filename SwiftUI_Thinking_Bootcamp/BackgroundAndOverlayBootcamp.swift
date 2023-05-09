//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/10.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image("kick")
            // resizable() 하고 난 후에 scaledToFit() 할것
            .resizable()
            .scaledToFit()

            .frame(width: 470, height: 270)
            // overlay는 위로 쌓인다.
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 70))
                    .shadow(color: .yellow, radius: 10, x: 0, y: 10)
                    
                    // background는 밑으로 쌓인다.
                    .background(
                        Image(systemName: "heart.fill")
                            .font(.system(size: 100))
                            .foregroundColor(.blue)
                            .shadow(color: .red, radius: 10, x: 0, y: 10)
                    )
                    .offset(x:150, y:100)
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}

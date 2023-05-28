//
//  SafeAreaBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/29.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.yellow)
                        .frame(height: 150)
                        .shadow(radius:10)
                        .padding(20)
                }
            }
            .background(Color.red)
        }
        .background(
            Color.blue
                .ignoresSafeArea(.all)
            )
        
//        ZStack {
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            // foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth:.infinity, maxHeight: .infinity)
//            .background(Color.yellow)
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}

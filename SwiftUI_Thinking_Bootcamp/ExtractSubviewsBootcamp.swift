//
//  ExtractSubviewsBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/29.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea(.all)
            
            // content
            contentLayer
        }
    }
    
    // content 안에 들어가는 myItem을 묶음
    var contentLayer: some View {
        HStack {
            myItem(title: "Apples", count: 10, color: .red)
            myItem(title: "Oranges", count: 10, color: .blue)
            myItem(title: "Bananas", count: 10, color: .gray)
        }
    }
    
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

// content 에서 내용을 빼낸 View
struct myItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

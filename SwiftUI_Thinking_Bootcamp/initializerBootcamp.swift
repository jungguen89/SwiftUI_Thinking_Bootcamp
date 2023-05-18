//
//  initializerBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/18.
//

import SwiftUI

struct initializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        switch fruit {
        case .apple :
            backgroundColor = .red
            title = "Apples"
        case .orange :
            backgroundColor = .orange
            title = "Oranges"
        case .grape:
            backgroundColor = .purple
            title = "Grape"
        }
    }
    
    enum Fruit{
        case apple
        case orange
        case grape
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct initializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            initializerBootcamp(count: 20, fruit: .apple)
            initializerBootcamp(count: 20, fruit: .orange)
            initializerBootcamp(count: 20, fruit: .grape)
        }
        
    }
}

//
//  StacksBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/08.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
